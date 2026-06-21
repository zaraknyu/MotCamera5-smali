.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final synthetic val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$deltaHeight:F

.field public final synthetic val$deltaTranslation:F

.field public final synthetic val$deltaWidth:F

.field public final synthetic val$endScissorRect:Landroid/graphics/Rect;

.field public final synthetic val$needScale:Z

.field public final synthetic val$onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$startScissorRect:Landroid/graphics/Rect;

.field public final synthetic val$targetScale:F


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Landroid/graphics/Rect;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;FZFLcom/motorola/camera/ui/widgets/gl/Vector3F;Landroid/graphics/Rect;Ljava/lang/Runnable;I)V
    .locals 0

    iput p12, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->$r8$classId:I

    const/16 p12, 0x13

    invoke-direct {p0, p12}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$startScissorRect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$deltaWidth:F

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$deltaHeight:F

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$deltaTranslation:F

    iput-boolean p7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$needScale:Z

    iput p8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$targetScale:F

    iput-object p9, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p10, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$endScissorRect:Landroid/graphics/Rect;

    iput-object p11, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$onAnimationEnd:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;F)V
    .locals 6

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$startScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$deltaWidth:F

    mul-float/2addr v4, p2

    add-float/2addr v4, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$deltaHeight:F

    mul-float/2addr v3, p2

    add-float/2addr v3, v2

    invoke-virtual {v1, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$deltaTranslation:F

    mul-float/2addr v5, p2

    add-float/2addr v5, v3

    const/4 v3, 0x0

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$needScale:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$targetScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4, p2, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v1, p2

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr p0, p2

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_0
    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$startScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$deltaWidth:F

    mul-float/2addr v3, p2

    add-float/2addr v3, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$deltaHeight:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$deltaTranslation:F

    mul-float/2addr v3, p2

    add-float/2addr v3, v1

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$needScale:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$targetScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3, p2, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p2

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v3, p2

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr p0, p2

    invoke-virtual {v1, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p0, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_1
    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 6

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$endScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$deltaTranslation:F

    add-float/2addr v3, v5

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$needScale:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$targetScale:F

    mul-float/2addr v4, v5

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v1, v5

    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$onAnimationEnd:Ljava/lang/Runnable;

    check-cast p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    invoke-virtual {p0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->run()V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$endScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$deltaTranslation:F

    add-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$needScale:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$targetScale:F

    mul-float/2addr v4, v5

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v3, v5

    invoke-virtual {v1, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->val$onAnimationEnd:Ljava/lang/Runnable;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;->run()V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
