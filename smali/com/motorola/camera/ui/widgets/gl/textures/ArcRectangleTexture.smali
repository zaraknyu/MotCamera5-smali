.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mBgColor:[F

.field public final mColor:[F

.field public mLineWidth:F

.field public mRadius:F

.field public mRect:Lcom/motorola/camera/SecureDataHelper;

.field public final mSize:[F

.field public final mVertices:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->$r8$classId:I

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_05_WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 p1, 0xc

    .line 2
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mVertices:[F

    const/4 p1, 0x4

    .line 3
    new-array v2, p1, [F

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mColor:[F

    .line 4
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mBgColor:[F

    const/4 p1, 0x2

    .line 5
    new-array v3, p1, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mSize:[F

    const/4 v3, 0x0

    .line 6
    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mLineWidth:F

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    aget v3, v1, v0

    aput v3, v2, v0

    const/4 v3, 0x1

    .line 9
    aget v4, v1, v3

    aput v4, v2, v3

    .line 10
    aget v3, v1, p1

    aput v3, v2, p1

    const/4 p1, 0x3

    .line 11
    aget v1, v1, p1

    aput v1, v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->$r8$classId:I

    .line 16
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 p1, 0xc

    .line 17
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mVertices:[F

    const/4 p1, 0x4

    .line 18
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mColor:[F

    const/4 p1, 0x2

    .line 19
    new-array v0, p1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mBgColor:[F

    .line 20
    new-array p1, p1, [F

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mSize:[F

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRadius:F

    .line 22
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mLineWidth:F

    .line 23
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setColor(I)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    .line 25
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final unloadTexture$com$motorola$camera$ui$widgets$gl$textures$ArcRectangleTexture()V
    .locals 0

    return-void
.end method

.method private final unloadTexture$com$motorola$camera$ui$widgets$gl$textures$FrontDisplayFlashTexture()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    const/4 p0, 0x0

    invoke-direct {v0, p0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized getRect()Lcom/motorola/camera/SecureDataHelper;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->$r8$classId:I

    monitor-enter p0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    :try_start_2
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getScaledHeight()F
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getScaledWidth()F
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized loadTexture()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->$r8$classId:I

    monitor-enter p0

    packed-switch v0, :pswitch_data_0

    monitor-exit p0

    return-void

    :pswitch_0
    monitor-exit p0

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->$r8$classId:I

    monitor-enter p0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v0, 0x1

    const/16 v2, 0x303

    invoke-static {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mVertices:[F

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v2, v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mColor:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TOP_GUIDE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRadius:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MIDDLE_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mBgColor:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->HOLLOW_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mSize:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->HOLLOW_TOP:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mLineWidth:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    invoke-static {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->resetBlendFunc()V
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

    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v0, 0x1

    const/16 v2, 0x303

    invoke-static {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mVertices:[F

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v2, v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mColor:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR_BG:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mBgColor:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->RADIUS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRadius:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->LINE_WIDTH:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mLineWidth:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mSize:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    invoke-static {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->resetBlendFunc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setColor(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 v1, 0x3

    aput p1, v0, v1
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

.method public declared-synchronized setHollowSize(FFF)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mSize:[F

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    aput p1, v0, v1

    const/4 p1, 0x1

    div-float/2addr p2, v2

    aput p2, v0, p1

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mLineWidth:F
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

.method public declared-synchronized setModuleSizes(FFF)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mBgColor:[F

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    aput p1, v0, v1

    const/4 p1, 0x1

    div-float/2addr p2, v2

    aput p2, v0, p1

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRadius:F
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

.method public declared-synchronized setRect(Lcom/motorola/camera/SecureDataHelper;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mVertices:[F

    iget-object v1, p1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v2, v3

    const/4 v4, 0x6

    aput v2, v0, v4

    const/4 v4, 0x0

    aput v2, v0, v4

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    const/4 v5, 0x4

    aput v2, v0, v5

    const/4 v5, 0x1

    aput v2, v0, v5

    iget v2, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    const/16 v6, 0xa

    aput v2, v0, v6

    const/4 v6, 0x7

    aput v2, v0, v6

    iget v2, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    const/16 v6, 0x9

    aput v2, v0, v6

    const/4 v6, 0x3

    aput v2, v0, v6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mSize:[F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v3

    aput v1, v0, v4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mSize:[F

    iget-object p1, p1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v3

    aput p1, v0, v5

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRectDirty:Z
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

.method public declared-synchronized setRect$2(Lcom/motorola/camera/SecureDataHelper;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mVertices:[F

    iget-object p1, p1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    const/16 v3, 0xa

    aput v1, v0, v3

    const/4 v3, 0x7

    aput v1, v0, v3

    iget p1, p1, Landroid/graphics/RectF;->right:F

    const/16 v1, 0x9

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRectDirty:Z
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

.method public declared-synchronized setSize(FF)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/motorola/camera/SecureDataHelper;

    neg-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float v3, p2, v2

    div-float/2addr p1, v2

    neg-float p2, p2

    div-float/2addr p2, v2

    invoke-direct {v0, v1, v3, p1, p2}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setRect$2(Lcom/motorola/camera/SecureDataHelper;)V
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

.method public final unloadTexture()V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->$r8$classId:I

    return-void
.end method
