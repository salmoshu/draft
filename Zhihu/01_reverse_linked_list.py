from manim import *

scale_factor = 1.5
buff_distance = 1
arr = [1, 2, 3, 4, 5]

class ListNode(Scene):
    def __init__(self, val=0, next=None):
        ''' 算法变量: 值与后继指针'''
        super().__init__()
        self.val = val
        self.next = next
    def construct(self):
        ''' 动画变量: 节点数组 '''
        self.n = 0         # 有效节点数目
        self.dots = []     # 动画链表节点（n+1）
        self.arrows = []   # 动画链表指针（n+1）
        self.pvalues = []  # 打印信息

        # 主要执行过程
        head = self.createLinkedList(arr)
        # self.printLinkedList(head)
        res = self.reverseList(head)
    
    # 创建链表结构 && 创建链表动画图形
    def createLinkedList(self, arr):
        ''' 算法操作: 创建链表结构 '''
        self.n = len(arr)
        if self.n == 0:
            return None
        
        head = ListNode(arr[0], None)
        cur = head
        for i in range(1, self.n):
            cur.next = ListNode(arr[i])
            cur = cur.next

        ''' 动画操作: 创建链表动画图形 '''
        # 初始化节点(注意: dots的长度为n+1)
        # 考虑尾部的NULL，也要显示在动画逻辑中
        for i in range(0, self.n+1):
            if i == self.n:
                dot = Text('NULL')
            else:
                dot = LabeledDot(Tex(str(i+1), color=RED))
                dot.scale(scale_factor)
            
            self.dots.append(dot)
        
        mdots = VGroup(*self.dots).set_x(0).arrange(buff=buff_distance)
        self.play(FadeIn(mdots))

        # 初始化箭头(需要考虑dots中的null)
        for i in range(0, self.n):
            curr_pos = self.dots[i].get_right()
            next_pos = self.dots[i+1].get_left()
            arrow = Arrow(curr_pos, next_pos, buff=0)
            self.arrows.append(arrow)
        
        marrows = VGroup(*self.arrows)
        self.play(FadeIn(marrows))

        return head
    
    def printLinkedList(self, head):
        ''' 算法操作: 打印链表节点信息 '''
        cur = head
        while cur is not None:
            print(cur.val, "-> ", end='')
            cur = cur.next
        print("NULL")

        ''' 动画操作: 逐一打印链表信息 '''
        cur = head
        arrow = None
        pvalue = None
        for i in range(self.n):
            if arrow is not None: 
                self.play(FadeOut(arrow))
            pvalue = Text(str(cur.val))
            cur = cur.next
            pvalue.next_to(self.dots[i], DOWN, buff=buff_distance)
            self.pvalues.append(pvalue)

            curr_pos = pvalue.get_top()
            next_pos = self.dots[i].get_bottom()
            arrow = Arrow(curr_pos, next_pos, buff=0)

            self.play(FadeIn(pvalue,arrow))
        
        mpvalues = VGroup(*self.pvalues)
        self.play(FadeOut(arrow, mpvalues))


    def reverseList(self, head):
        """
		:type head: ListNode
		:rtype: ListNode
		"""
        ''' 算法操作: 翻转链表 '''
        if self.n == 0:
            return None

        pre = None
        cur = head
        while cur:
            tmp = cur.next
            cur.next = pre
            pre = cur
            cur = tmp
        
        ''' 动画操作: 翻转链表 '''
        # 增加一个左侧的NULL,同时将整体的未知做一下调整
        self.dots.insert(0, Text("NULL"))
        self.dots[0].next_to(self.dots[1], LEFT, buff=buff_distance)
        self.play(FadeIn(self.dots[0]))
        melments = VGroup(*self.dots, *self.arrows)
        melments.move_to(RIGHT*0.1)
        self.play(FadeIn(melments))

        # 初始化pre和cur指针
        pre = None
        pre = Text("pre")
        pre.next_to(self.dots[0], UP, buff=buff_distance)
        pre_arrow = Arrow(pre.get_bottom(), self.dots[0].get_top(), buff=0)
        cur = Text("cur")
        cur.next_to(self.dots[1], UP, buff=buff_distance)
        cur_arrow = Arrow(cur.get_bottom(), self.dots[1].get_top(), buff=0)
        self.play(FadeIn(pre, pre_arrow, cur, cur_arrow))
        next = Text("next")

        # 移动pre、cur和next指针
        for i in range(1, self.n+1):
            # next = cur;
            next.next_to(self.dots[i+1], UP, buff=buff_distance)
            next_arrow = Arrow(next.get_bottom(), self.dots[i+1].get_top(), buff=0)
            self.play(FadeIn(next, next_arrow))
            
            # cur.next = pre
            self.play(FadeOut(self.arrows[i-1]))
            arraw = Arrow(self.dots[i].get_left(), self.dots[i-1].get_right(), buff=0)
            self.play(FadeIn(arraw))

            # pre = cur
            self.play(FadeOut(pre, pre_arrow))
            pre.next_to(self.dots[i], UP, buff=buff_distance)
            pre_arrow = cur_arrow
            self.play(FadeIn(pre, pre_arrow))
            
            # cur = next
            self.play(FadeOut(cur))
            cur.next_to(self.dots[i+1], UP, buff=buff_distance)
            cur_arrow = next_arrow
            self.play(FadeIn(cur))
        
        self.play(FadeOut(pre, pre_arrow, cur, cur_arrow, next, next_arrow, self.dots[-1]))

        return pre	
