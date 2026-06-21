.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->$r8$classId:I

    const/16 p1, 0x13

    invoke-direct {p0, p1}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;F)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    neg-float v2, p2

    invoke-virtual {v0, v1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitDragToScrollBounds()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateScrollPosition()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    const p0, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, p0

    if-gtz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p0, p2, p0

    if-gez p0, :cond_1

    :cond_0
    iput-boolean v1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    :cond_1
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitDragToScrollBounds()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateScrollPosition()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    const p0, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, p0

    if-gtz v0, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p0, p2, p0

    if-gez p0, :cond_3

    :cond_2
    iput-boolean v1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    :cond_3
    return-void

    :pswitch_1
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setAlpha(F)V

    :cond_4
    return-void

    :pswitch_2
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setAlpha(F)V

    :cond_5
    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFacePolicy:Landroidx/room/concurrent/FileLock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xa

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFacePolicy:Landroidx/room/concurrent/FileLock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_0
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mFadeAnimation:I

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mFadeAnimation:I

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationStart()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mFadeAnimation:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mFadeAnimation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
