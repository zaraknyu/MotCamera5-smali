.class public final Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;


# instance fields
.field public final deviceOrientationMatrix:[F

.field public deviceRoll:F

.field public final projectionMatrix:[F

.field public final scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

.field public final tempMatrix:[F

.field public final synthetic this$0:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

.field public touchPitch:F

.field public final touchPitchMatrix:[F

.field public final touchYawMatrix:[F

.field public final viewMatrix:[F

.field public final viewProjectionMatrix:[F


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroidx/media3/exoplayer/video/spherical/SceneRenderer;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    const/16 p1, 0x10

    new-array v0, p1, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    new-array v0, p1, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    new-array v0, p1, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    new-array v1, p1, [F

    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    new-array v2, p1, [F

    iput-object v2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    new-array v3, p1, [F

    iput-object v3, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v1, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const p1, 0x40490fdb    # (float)Math.PI

    iput p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    return-void
.end method


# virtual methods
.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    iget-object v4, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    iget-object v6, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v8, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    iget-object v10, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    iget-object v12, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    iget-object v4, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    iget-object v6, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    iget-object v5, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    :try_start_1
    invoke-static {}, Landroidx/media3/common/util/Log;->checkGlError()V
    :try_end_1
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SceneRenderer"

    const-string v3, "Failed to draw a frame"

    invoke-static {v1, v3, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v10, 0x2

    if-eqz v0, :cond_9

    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :try_start_2
    invoke-static {}, Landroidx/media3/common/util/Log;->checkGlError()V
    :try_end_2
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "SceneRenderer"

    const-string v4, "Failed to draw a frame"

    invoke-static {v3, v4, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-static {v0, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :cond_0
    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v3

    iget-object v6, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->sampleTimestampQueue:Landroidx/media3/common/util/TimedValueQueue;

    monitor-enter v6

    :try_start_3
    invoke-virtual {v6, v3, v4, v9}, Landroidx/media3/common/util/TimedValueQueue;->poll(JZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v6, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameRotationQueue:Landroidx/compose/runtime/Latch;

    iget-object v11, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v0, v6, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, v7, v8}, Landroidx/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v7, v6, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    move-object v12, v7

    check-cast v12, [F

    aget v7, v0, v9

    aget v8, v0, v1

    neg-float v8, v8

    aget v0, v0, v10

    neg-float v0, v0

    invoke-static {v7, v8, v0}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    if-eqz v14, :cond_2

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    double-to-float v14, v14

    div-float v15, v7, v13

    div-float v16, v8, v13

    div-float v17, v0, v13

    const/4 v13, 0x0

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    goto :goto_2

    :cond_2
    invoke-static {v12, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :goto_2
    iget-boolean v0, v6, Landroidx/compose/runtime/Latch;->_isOpen:Z

    if-nez v0, :cond_3

    iget-object v0, v6, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v0, [F

    iget-object v7, v6, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast v7, [F

    invoke-static {v0, v7}, Landroidx/compose/runtime/Latch;->computeRecenterMatrix([F[F)V

    iput-boolean v1, v6, Landroidx/compose/runtime/Latch;->_isOpen:Z

    :cond_3
    iget-object v0, v6, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, [F

    iget-object v0, v6, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, [F

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_4
    :goto_3
    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, v3, v4}, Landroidx/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/spherical/Projection;

    if-eqz v0, :cond_9

    iget-object v3, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionRenderer:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->isSupported(Landroidx/media3/exoplayer/video/spherical/Projection;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    iget v4, v0, Landroidx/media3/exoplayer/video/spherical/Projection;->stereoMode:I

    iput v4, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->stereoMode:I

    new-instance v4, Landroidx/media3/common/util/TimedValueQueue;

    iget-object v6, v0, Landroidx/media3/exoplayer/video/spherical/Projection;->leftMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    iget-object v6, v6, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->subMeshes:[Landroidx/media3/common/util/TimedValueQueue;

    aget-object v6, v6, v9

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v7, v6, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast v7, [F

    array-length v8, v7

    div-int/lit8 v8, v8, 0x3

    iput v8, v4, Landroidx/media3/common/util/TimedValueQueue;->first:I

    invoke-static {v7}, Landroidx/media3/common/util/Log;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, v4, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    iget-object v7, v6, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast v7, [F

    invoke-static {v7}, Landroidx/media3/common/util/Log;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, v4, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    iget v6, v6, Landroidx/media3/common/util/TimedValueQueue;->size:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    const/4 v6, 0x4

    iput v6, v4, Landroidx/media3/common/util/TimedValueQueue;->size:I

    goto :goto_4

    :cond_6
    const/4 v6, 0x6

    iput v6, v4, Landroidx/media3/common/util/TimedValueQueue;->size:I

    goto :goto_4

    :cond_7
    const/4 v6, 0x5

    iput v6, v4, Landroidx/media3/common/util/TimedValueQueue;->size:I

    :goto_4
    iput-object v4, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->leftMeshData:Landroidx/media3/common/util/TimedValueQueue;

    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/spherical/Projection;->singleMesh:Z

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/Projection;->rightMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->subMeshes:[Landroidx/media3/common/util/TimedValueQueue;

    aget-object v0, v0, v9

    iget-object v3, v0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast v3, [F

    array-length v4, v3

    invoke-static {v3}, Landroidx/media3/common/util/Log;->createBuffer([F)Ljava/nio/FloatBuffer;

    iget-object v0, v0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v0}, Landroidx/media3/common/util/Log;->createBuffer([F)Ljava/nio/FloatBuffer;

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_9
    :goto_5
    iget-object v3, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->tempMatrix:[F

    iget-object v7, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->rotationMatrix:[F

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v3, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionRenderer:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

    iget v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->textureId:I

    iget-object v2, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->tempMatrix:[F

    const-string v4, "ProjectionRenderer"

    iget-object v5, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->leftMeshData:Landroidx/media3/common/util/TimedValueQueue;

    if-nez v5, :cond_a

    goto/16 :goto_a

    :cond_a
    iget v6, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->stereoMode:I

    if-ne v6, v1, :cond_b

    sget-object v6, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    goto :goto_6

    :cond_b
    if-ne v6, v10, :cond_c

    sget-object v6, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    goto :goto_6

    :cond_c
    sget-object v6, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    :goto_6
    iget v7, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    invoke-static {v7, v1, v9, v6, v9}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    iget v6, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    invoke-static {v6, v1, v9, v2, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->textureHandle:I

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :try_start_5
    invoke-static {}, Landroidx/media3/common/util/Log;->checkGlError()V
    :try_end_5
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    const-string v1, "Failed to bind uniforms"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    iget v10, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->positionHandle:I

    iget-object v0, v5, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/nio/FloatBuffer;

    const/4 v11, 0x3

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/16 v14, 0xc

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :try_start_6
    invoke-static {}, Landroidx/media3/common/util/Log;->checkGlError()V
    :try_end_6
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    const-string v1, "Failed to load position data"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    iget v10, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->texCoordsHandle:I

    iget-object v0, v5, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/nio/FloatBuffer;

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/16 v14, 0x8

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :try_start_7
    invoke-static {}, Landroidx/media3/common/util/Log;->checkGlError()V
    :try_end_7
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    const-string v1, "Failed to load texture data"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    iget v0, v5, Landroidx/media3/common/util/TimedValueQueue;->size:I

    iget v1, v5, Landroidx/media3/common/util/TimedValueQueue;->first:I

    invoke-static {v0, v9, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :try_start_8
    invoke-static {}, Landroidx/media3/common/util/Log;->checkGlError()V
    :try_end_8
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    const-string v1, "Failed to render"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    return-void

    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0
.end method

.method public final declared-synchronized onOrientationChange([FF)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    neg-float p1, p2

    iput p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    iget p2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitch:F

    neg-float v2, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float v3, p1

    iget p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float v4, p1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float p1, p2

    int-to-float p2, p3

    div-float v3, p1, p2

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v3, p1

    if-lez p1, :cond_0

    const-wide p1, 0x4046800000000000L    # 45.0

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    float-to-double v0, v3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, v0

    double-to-float p1, p1

    :goto_0
    move v2, p1

    goto :goto_1

    :cond_0
    const/high16 p1, 0x42b40000    # 90.0f

    goto :goto_0

    :goto_1
    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x42c80000    # 100.0f

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    return-void
.end method

.method public final declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object p2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->init()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    iget-object v0, p1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 v2, 0x16

    invoke-direct {v1, v2, p1, p2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
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
