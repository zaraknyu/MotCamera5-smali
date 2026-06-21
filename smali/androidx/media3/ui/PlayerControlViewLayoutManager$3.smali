.class public final Landroidx/media3/ui/PlayerControlViewLayoutManager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

.field public final synthetic val$playerControlView:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;Landroidx/media3/ui/PlayerControlView;I)V
    .locals 0

    iput p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iput-object p2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->val$playerControlView:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    iget-boolean p1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->val$playerControlView:Landroidx/media3/ui/PlayerControlView;

    iget-object p1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->showAllBarsRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    iput-boolean p0, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    :cond_0
    return-void

    :pswitch_0
    const/4 p1, 0x2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    iget-boolean p1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->val$playerControlView:Landroidx/media3/ui/PlayerControlView;

    iget-object p1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->showAllBarsRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    iput-boolean p0, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    :cond_1
    return-void

    :pswitch_1
    const/4 p1, 0x1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    iget-boolean p1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->val$playerControlView:Landroidx/media3/ui/PlayerControlView;

    iget-object p1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->showAllBarsRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    iput-boolean p0, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
