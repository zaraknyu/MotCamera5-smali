.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public final synthetic val$isDualCaptureMode:Z

.field public final synthetic val$previewOffset:F

.field public final synthetic val$previewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

.field public final synthetic val$startOffset:F

.field public final synthetic val$startOffsetX:F

.field public final synthetic val$startRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

.field public final synthetic val$startScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$viewRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

.field public final synthetic val$viewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$viewTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFFLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Rotation;Lcom/motorola/camera/ui/widgets/gl/Rotation;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startOffset:F

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewOffset:F

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startOffsetX:F

    iput-object p7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iput-object p9, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iput-object p10, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iput-boolean p11, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$isDualCaptureMode:Z

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;F)V
    .locals 9

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v0, v3

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v1, v3

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr p1, v3

    mul-float/2addr v0, p2

    mul-float/2addr v1, p2

    mul-float/2addr p1, p2

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v2, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v2, v0

    iput v2, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v0, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v0, v1

    iput v0, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v0, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v0, p1

    iput v0, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startOffset:F

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewOffset:F

    invoke-static {v0, p1, p2, p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v6

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startOffsetX:F

    invoke-static {p1, v0, p2, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v7

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    cmpl-float v2, p1, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    float-to-int v1, v1

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    sub-float/2addr v1, p1

    cmpg-float v2, v1, v3

    const/high16 v3, 0x43b40000    # 360.0f

    if-gez v2, :cond_1

    add-float/2addr v1, v3

    :cond_1
    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    sub-float/2addr v1, v3

    :cond_2
    add-float/2addr v1, p1

    sub-float v3, v1, p1

    :goto_0
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    mul-float/2addr v3, p2

    add-float/2addr v3, p1

    iget p1, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    invoke-direct {v8, v3, p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChangeValues(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFLcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$isDualCaptureMode:Z

    if-eqz p0, :cond_3

    iget-object p0, v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    aget-object v1, p1, v1

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    const/4 v4, 0x0

    aget-object p1, p1, v4

    iget v4, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v2, v4

    iget v4, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr v1, v4

    mul-float/2addr v2, p2

    mul-float/2addr v3, p2

    mul-float/2addr v1, p2

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr p1, v2

    iput p1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr p1, v3

    iput p1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr p1, v1

    iput p1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    const/4 p1, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_3
    return-void
.end method

.method public final onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 6

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v4, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewOffset:F

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChangeValues(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFLcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
