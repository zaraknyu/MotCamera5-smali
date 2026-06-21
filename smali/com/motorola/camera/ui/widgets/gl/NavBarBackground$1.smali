.class public final Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public val$visible:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->$r8$classId:I

    const/16 p3, 0x13

    invoke-direct {p0, p3}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->val$visible:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->$r8$classId:I

    const/16 v0, 0x13

    .line 2
    invoke-direct {p0, v0}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->val$visible:Z

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;F)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setAlpha(F)V

    const/4 v0, 0x0

    sub-float v0, p2, v0

    const/high16 v1, -0x41000000    # -0.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    add-float/2addr v0, v1

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setPostScale(FFF)V

    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->val$visible:Z

    if-nez v0, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->val$visible:Z

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyShowBarAnimation()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleFrameTexture()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_1
    return-void

    :pswitch_1
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-virtual {p0, p2, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setPostScale(FFF)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->startRoiTiming(Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->val$visible:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p0, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-interface {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setAlpha(F)V

    const/4 v1, 0x1

    if-nez p0, :cond_6

    iget-boolean p0, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setAlpha(F)V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setAlpha(F)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleFrameTexture()Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->visibleToggleTexture()Z

    move-result p0

    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setAlpha(F)V

    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroToggle:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAllowShowAutoMacro:Z

    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroIsMacro:Z

    if-eqz v3, :cond_3

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_4
    iget-boolean p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enableZoomToggle(Z)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setVisibility$3(Z)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleFrameTexture()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_5
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    goto :goto_2

    :cond_6
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    :cond_7
    :goto_2
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->val$visible:Z

    if-nez p0, :cond_8

    iget-boolean p0, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-nez p0, :cond_8

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_8
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mEnableDrag:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setAlpha(F)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    const/4 p0, 0x0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->startRoiTiming(Z)V

    :cond_1
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->val$visible:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    instance-of v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontZoomComponent;

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    if-eqz v0, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    invoke-interface {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setAlpha(F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setVisibility$3(Z)V

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    if-eqz v0, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setAlpha(F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->visibleToggleTexture()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAutoMacroToggle:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    if-eqz v1, :cond_5

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAllowShowAutoMacro:Z

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleFrameTexture()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz v0, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
