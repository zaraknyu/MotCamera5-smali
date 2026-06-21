.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$end:F

.field public final synthetic val$glComponent:Ljava/lang/Object;

.field public final synthetic val$onAnimationEnd:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;FLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->$r8$classId:I

    const/16 v0, 0x13

    .line 2
    invoke-direct {p0, v0}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$end:F

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$glComponent:Ljava/lang/Object;

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$onAnimationEnd:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLjava/lang/Runnable;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->$r8$classId:I

    const/16 p6, 0x13

    invoke-direct {p0, p6}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$onAnimationEnd:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$glComponent:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$end:F

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Ljava/lang/Object;

    return-void
.end method

.method private final onAnimationCancel$com$motorola$camera$ui$widgets$gl$textures$modes$ModeLayoutTexture$2(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;F)V
    .locals 4

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$glComponent:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$end:F

    mul-float/2addr p2, v3

    add-float/2addr p2, v1

    const/4 v1, 0x0

    invoke-direct {v0, v2, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$onAnimationEnd:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$glComponent:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$end:F

    mul-float/2addr p2, v3

    add-float/2addr p2, v1

    const/4 v1, 0x0

    invoke-direct {v0, v2, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$onAnimationEnd:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$end:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    div-float/2addr v1, p2

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v1, p0

    sub-float p2, p0, v1

    add-float/2addr v1, p0

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2, v1, v1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setBlurRect(Landroid/graphics/RectF;)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onPreviewChanged()V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v1, p2

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr p0, p2

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    :goto_0
    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->$r8$classId:I

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 6

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$glComponent:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$end:F

    add-float/2addr v3, v5

    invoke-direct {v2, v4, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setSelected(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$onAnimationEnd:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$glComponent:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$end:F

    add-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$onAnimationEnd:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$end:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v3, v1

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iput-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mReusePreview:Z

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$onAnimationEnd:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;->run()V

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$glComponent:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$glComponent:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$onAnimationEnd:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$glComponent:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$onAnimationEnd:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$end:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mReusePreview:Z

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onPreviewChanged()V

    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$glComponent:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
