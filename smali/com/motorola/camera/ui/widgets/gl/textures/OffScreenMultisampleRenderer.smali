.class public final Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public mColorTextureMultiSampled:I

.field public mDepthStencilRbo:I

.field public mFramebuffer:I

.field public mHeight:I

.field public final mIdentityMatrix:[F

.field public final mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mResize:Z

.field public mWidth:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mResize:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mIdentityMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v1, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public final draw([F[F)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mWidth:I

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mHeight:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mIdentityMatrix:[F

    invoke-virtual {p1, p0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final initializeFramebuffer()V
    .locals 12

    sget v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const-string v3, "glGenFramebuffers"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v1, v1, v2

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mFramebuffer:I

    const v3, 0x8d40

    invoke-static {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mWidth:I

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mHeight:I

    new-array v1, v0, [I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v4, "glGenTextures"

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v4, v1, v2

    const v10, 0x9100

    invoke-static {v10, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v11, "glBindTexture"

    invoke-static {v11}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const v6, 0x8058

    const/4 v9, 0x1

    const v4, 0x9100

    const/4 v5, 0x4

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES31;->glTexStorage2DMultisample(IIIIIZ)V

    const-string v4, "glTexStorage2DMultisample"

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v11}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const v4, 0x8ce0

    aget v5, v1, v2

    invoke-static {v3, v4, v10, v5, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const-string v4, "glFramebufferTexture2D"

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v1, v1, v2

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mColorTextureMultiSampled:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mWidth:I

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mHeight:I

    new-array v5, v0, [I

    invoke-static {v0, v5, v2}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    const-string v0, "glGenRenderbuffers"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v0, v5, v2

    const v6, 0x8d41

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const-string v0, "glBindRenderbuffer"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/4 v7, 0x4

    const v8, 0x88f0

    invoke-static {v6, v7, v8, v1, v4}, Landroid/opengl/GLES30;->glRenderbufferStorageMultisample(IIIII)V

    const-string v1, "glRenderbufferStorageMultisample"

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const v0, 0x821a

    aget v1, v5, v2

    invoke-static {v3, v0, v6, v1}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    const-string v0, "glFramebufferRenderbuffer"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v0, v5, v2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mDepthStencilRbo:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p0

    const-string v0, "glCheckFramebufferStatus"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const v0, 0x8cd5

    if-eq p0, v0, :cond_0

    const-string v0, "OffScreenMultisampleRenderer"

    const-string v1, "Failed to create Framebuffer: "

    invoke-static {v1, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    return-void
.end method

.method public final declared-synchronized loadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mHeight:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->initializeFramebuffer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mResize:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDraw([F[F)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OffScreenMultisampleRenderer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mResize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mResize:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unloadTexture()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mFramebuffer:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    const-string v0, "glDeleteFramebuffers"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mFramebuffer:I

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mColorTextureMultiSampled:I

    if-eqz v0, :cond_3

    sget v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    if-eqz v0, :cond_2

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const-string v0, "glDeleteMultisampleTextures"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :cond_2
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mColorTextureMultiSampled:I

    :cond_3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mDepthStencilRbo:I

    if-eqz v0, :cond_4

    sget v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    const-string v0, "glDeleteRenderbuffers"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenMultisampleRenderer;->mDepthStencilRbo:I

    :cond_4
    return-void
.end method
