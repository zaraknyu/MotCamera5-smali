.class public final synthetic Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/UIManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/UIManager;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/UIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/UIManager;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/UIManager;->mIgnoreRotationChanges:Z

    iget v0, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->rotateUI(I)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/UIManager;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->registerLightSensorListener(Ljava/lang/Boolean;)V

    return-void

    :pswitch_1
    const/4 v0, 0x3

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->initViewStubComponents(I)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_2D_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/UIManager;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->registerLightSensorListener(Ljava/lang/Boolean;)V

    return-void

    :pswitch_3
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/UIManager;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/UIManager;->mIgnoreRotationChanges:Z

    iget v0, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->rotateUI(I)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/UIManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->adjustScreenBrightness(Z)V

    return-void

    :pswitch_5
    const/4 v0, 0x2

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->initViewStubComponents(I)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_GL_FIRST_DRAW_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/UIManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/UIManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mDetector:Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getUIScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
