.class public final synthetic Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mFadeAnimRunning:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mTutorialLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mFadeAnimRunning:Z

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mFadeAnimRunning:Z

    return-void

    :pswitch_2
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mFadeAnimRunning:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mTutorialLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->animateFade$1(Z)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->animateFade$1(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
