.class public final Landroidx/recyclerview/widget/FastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mCanceled:Z

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/FastScroller;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method public constructor <init>(ZLcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->$r8$classId:I

    iput-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    iput-object p2, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Ljava/lang/Object;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    const-string v1, "animation"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    if-nez p0, :cond_0

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->setMenuUIVisibility(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->animateShowModePill()V

    :cond_0
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modeChangeTriggered:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->setUIClickable(Z)V

    :cond_1
    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/FastScroller;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    goto :goto_0

    :cond_2
    iget-object p0, p1, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_3

    iput v1, p1, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    iput p0, p1, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    iget-object p0, p1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
