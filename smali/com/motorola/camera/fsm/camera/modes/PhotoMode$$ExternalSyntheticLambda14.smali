.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(FILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;->$r8$classId:I

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;->f$1:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;->f$1:F

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;->f$1:F

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;->f$1:F

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "QCFA_ANALOG_GAIN"

    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;->f$1:F

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
