.class public final Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$6;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    return-void
.end method


# virtual methods
.method public final declared-synchronized applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    invoke-virtual {p0, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setVisibility(ZZ)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
