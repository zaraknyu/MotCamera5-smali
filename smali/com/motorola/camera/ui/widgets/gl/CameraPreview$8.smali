.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;
.super Landroidx/collection/internal/Lock;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$texture:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->$r8$classId:I

    const/16 p1, 0x13

    invoke-direct {p0, p1}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->val$texture:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->val$texture:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$mrequestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->val$texture:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getSelectCell()Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    :goto_0
    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToRealMode(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->isDefaultSlider()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_1
    if-ne v1, v2, :cond_2

    iget v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFromMode:I

    if-ne v3, v1, :cond_2

    iget-object v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_2
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFromMode:I

    if-ne v0, v1, :cond_3

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getDirection(II)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)Z

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    :cond_4
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->val$texture:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->val$texture:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->val$texture:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdleArrowDisplayed:Z

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->val$texture:Ljava/lang/Object;

    check-cast p0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    array-length v3, p0

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_7

    aget-object v5, p0, v4

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v2, :cond_5

    iget-boolean v6, p1, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdle:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    move v6, v0

    :goto_2
    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_5
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->val$texture:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

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

.method public final onAnimationStart()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$mrequestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->val$texture:Ljava/lang/Object;

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->val$texture:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->val$texture:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

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

.method public onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->val$texture:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/4 v1, 0x0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {v0, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$monSliderMoving(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;FLcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
