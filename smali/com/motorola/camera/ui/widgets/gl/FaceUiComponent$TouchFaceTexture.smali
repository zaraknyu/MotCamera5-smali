.class public final Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;
.source "SourceFile"


# instance fields
.field public final mBgColor:[F

.field public mBitmap:Landroid/graphics/Bitmap;

.field public final mColor:[F

.field public mDeleteTex:Z

.field public final mDensity:F

.field public mDirty:Z

.field public final mFaceMatrix:[F

.field public mLineWidth:F

.field public mMirror:Z

.field public mRadius:F

.field public mRect:Lcom/motorola/camera/SecureDataHelper;

.field public final mSize:[F

.field public mTextureID:I

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public final mTouchRect:Lcom/motorola/camera/SecureDataHelper;

.field public mUpdateVertices:Z

.field public mUseTexture:I

.field public mVbo:I

.field public final mVertices:[F

.field public final mVertices$1:[F

.field public mViewSize:Lcom/motorola/camera/PreviewSize;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V
    .locals 2

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-direct {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 p1, 0x4

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mColor:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mBgColor:[F

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mSize:[F

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mLineWidth:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mUseTexture:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVbo:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTextureID:I

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDirty:Z

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVertices$1:[F

    invoke-virtual {p0, p4}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->setColor(I)V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p4, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-instance p4, Lcom/motorola/camera/SecureDataHelper;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/16 v1, 0xc

    invoke-direct {p4, v1, v0}, Lcom/motorola/camera/SecureDataHelper;-><init>(ILjava/lang/Object;)V

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTouchRect:Lcom/motorola/camera/SecureDataHelper;

    const/16 p4, 0x10

    new-array p4, p4, [F

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mFaceMatrix:[F

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    new-array p2, v1, [F

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVertices:[F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDensity:F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final deleteTexture()V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDeleteTex:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTextureID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteTexture(I)V

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTextureID:I

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVbo:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->deleteVbo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVbo:I

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDeleteTex:Z

    :cond_1
    return-void
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final declared-synchronized getRect()Lcom/motorola/camera/SecureDataHelper;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTouchRect:Lcom/motorola/camera/SecureDataHelper;
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
.end method

.method public final getScaledHeight()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result p0

    return p0
.end method

.method public final getScaledWidth()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    return p0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->loadTexture$com$motorola$camera$ui$widgets$gl$textures$ColorRectangleTexture()V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDensity:F

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mLineWidth:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->setBgColor(I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final declared-synchronized loadTexture$com$motorola$camera$ui$widgets$gl$textures$ColorRectangleTexture()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTextureID:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVbo:I

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDeleteTex:Z

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->deleteTexture()V

    const v0, 0x84c0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->generateTexture(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTextureID:I

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mUpdateVertices:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVbo:I

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PermissionCallback;->deleteVbo(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVertices$1:[F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/motorola/camera/PermissionCallback;->generateVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVbo:I

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mUpdateVertices:Z

    :cond_2
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mUpdateVertices:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    const v3, 0x7f0800e6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v4, 0xa

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v1, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v3

    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 0

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object p4, p3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {p3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->-$$Nest$misPhotoTapAnywhere(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget p3, p2, Landroid/graphics/PointF;->x:F

    iget p5, p4, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p5, p5

    const/high16 p6, 0x40000000    # 2.0f

    div-float/2addr p5, p6

    add-float/2addr p5, p3

    const-string/jumbo p3, "x"

    invoke-virtual {p1, p3, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p3, p4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p3, p3

    div-float/2addr p3, p6

    sub-float/2addr p2, p3

    neg-float p2, p2

    const-string/jumbo p3, "y"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->FACE_MOVE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    const/16 v1, 0xc11

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldDualPaneScreen()Z

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v4, Lcom/motorola/camera/PreviewSize;->width:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v2, v5

    iget v3, v4, Lcom/motorola/camera/PreviewSize;->height:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const-string v0, "glScissor"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    const-string p1, "glDisable"

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onPostDraw()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->resetBlendFunc()V

    return-void
.end method

.method public final declared-synchronized onPreDraw()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mUpdateVertices:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVbo:I

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->deleteVbo(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVertices$1:[F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/motorola/camera/PermissionCallback;->generateVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVbo:I

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mUpdateVertices:Z

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDirty:Z

    if-eqz v0, :cond_1

    const v0, 0x84c0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTextureID:I

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindTexture(II)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->texImage2D(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDirty:Z

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDeleteTex:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->deleteTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAiGroupPhotoMode()Z

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mUseTexture:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final onProgramSetup()Lcom/motorola/camera/ui/widgets/gl/Shader;
    .locals 1

    const/16 v0, 0x13

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    return-object p0
.end method

.method public final onRender(Lcom/motorola/camera/ui/widgets/gl/Shader;[F[F)V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVbo:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-static {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    const/4 v3, 0x3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVbo:I

    const/16 v5, 0x14

    invoke-virtual {v2, v3, v5, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->TEXTURE_COORD:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    const/16 v3, 0xc

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVbo:I

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v5, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {p1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V

    const v2, 0x84c0

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    const/16 v2, 0xde1

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTextureID:I

    invoke-static {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindTexture(II)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v2, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mColor:[F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR_BG:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mBgColor:[F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->RADIUS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mRadius:F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->LINE_WIDTH:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mLineWidth:F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mSize:[F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->USE_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mUseTexture:I

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V

    const/4 p0, 0x5

    const/4 p1, 0x4

    invoke-static {p0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->-$$Nest$misPhotoTapAnywhere(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TOUCH_TO_EXPOSE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->onTouch(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized setBgColor(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mBgColor:[F

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    aput v1, p1, v0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mBgColor:[F

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, p1, v3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mBgColor:[F

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x2

    aput v1, p1, v3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mBgColor:[F

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    const/4 v1, 0x3

    aput v0, p1, v1
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

.method public final declared-synchronized setColor(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mColor:[F

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

.method public final declared-synchronized setRect$1(Lcom/motorola/camera/SecureDataHelper;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVertices$1:[F

    iget-object v1, p1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v2, v3

    const/4 v4, 0x0

    aput v2, v0, v4

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v3

    const/4 v6, 0x1

    aput v5, v0, v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v0, v7

    const/4 v7, 0x3

    aput v8, v0, v7

    const/4 v7, 0x4

    aput v8, v0, v7

    iget v7, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v3

    const/4 v9, 0x5

    aput v7, v0, v9

    const/4 v9, 0x6

    aput v5, v0, v9

    const/4 v5, 0x7

    aput v8, v0, v5

    const/16 v5, 0x8

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v0, v5

    const/16 v5, 0x9

    aput v8, v0, v5

    const/16 v5, 0xa

    aput v2, v0, v5

    iget v2, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    const/16 v5, 0xb

    aput v2, v0, v5

    const/16 v5, 0xc

    aput v8, v0, v5

    const/16 v5, 0xd

    aput v8, v0, v5

    const/16 v5, 0xe

    aput v9, v0, v5

    const/16 v5, 0xf

    aput v7, v0, v5

    const/16 v5, 0x10

    aput v2, v0, v5

    const/16 v2, 0x11

    aput v8, v0, v2

    const/16 v2, 0x12

    aput v9, v0, v2

    const/16 v2, 0x13

    aput v9, v0, v2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mSize:[F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v3

    aput v1, v0, v4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mSize:[F

    iget-object p1, p1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v3

    aput p1, v0, v6

    iput-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRectDirty:Z

    iput-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mUpdateVertices:Z
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
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTextureID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVbo:I

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDeleteTex:Z

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->deleteTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateTouchRect()V
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVMatrix:[F

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    :goto_0
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v10

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewPort:[I

    const/16 v0, 0x10

    new-array v8, v0, [F

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    const/high16 v16, 0x40000000    # 2.0f

    div-float v3, v3, v16

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    div-float v0, v0, v16

    const/4 v5, 0x3

    new-array v14, v5, [F

    const/4 v5, 0x0

    invoke-static {v8, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mFaceMatrix:[F

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v8, v6, v7, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mMirror:Z

    const/16 v17, 0x6

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVertices:[F

    aget v2, v2, v17

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVertices:[F

    aget v2, v2, v5

    :goto_1
    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVertices:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move/from16 v18, v5

    move v5, v2

    move/from16 v2, v18

    invoke-static/range {v5 .. v15}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTouchRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v5, v5, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    aget v6, v14, v2

    sub-float/2addr v6, v3

    iput v6, v5, Landroid/graphics/RectF;->left:F

    aget v6, v14, v4

    sub-float/2addr v6, v0

    iput v6, v5, Landroid/graphics/RectF;->top:F

    iget-boolean v5, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mMirror:Z

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVertices:[F

    aget v5, v5, v2

    goto :goto_2

    :cond_3
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVertices:[F

    aget v5, v5, v17

    :goto_2
    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVertices:[F

    aget v6, v6, v4

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v15}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTouchRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v5, v5, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    aget v2, v14, v2

    sub-float/2addr v2, v3

    iput v2, v5, Landroid/graphics/RectF;->right:F

    aget v3, v14, v4

    sub-float/2addr v3, v0

    iput v3, v5, Landroid/graphics/RectF;->bottom:F

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_5

    iget v0, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v0, v2

    if-lez v4, :cond_4

    iget v4, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v2, v4, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_4
    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    iget v2, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_5

    iget v3, v5, Landroid/graphics/RectF;->left:F

    iget v4, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v3, v0, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_5
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTouchRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v0, v0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTouchRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v2, v2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v3, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/high16 v3, 0x42480000    # 50.0f

    :goto_3
    invoke-virtual {v1, v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTouchRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v0, v0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mTouchRect:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {v2}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    monitor-enter p0

    :try_start_0
    new-instance v3, Lcom/motorola/camera/SecureDataHelper;

    neg-float v4, v0

    div-float v4, v4, v16

    div-float v5, v2, v16

    div-float v6, v0, v16

    neg-float v7, v2

    div-float v7, v7, v16

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V

    iput-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->setRect$1(Lcom/motorola/camera/SecureDataHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v2, 0x3e23d70a    # 0.16f

    mul-float/2addr v0, v2

    const/high16 v2, 0x41400000    # 12.0f

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mDensity:F

    mul-float/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mRadius:F

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
