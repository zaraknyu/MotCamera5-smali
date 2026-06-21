.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;

.field public final synthetic f$1:Ljava/nio/ByteBuffer;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;Ljava/nio/ByteBuffer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda4;->f$1:Ljava/nio/ByteBuffer;

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda4;->f$2:I

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda4;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda4;->f$1:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda4;->f$2:I

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent$$ExternalSyntheticLambda4;->f$3:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, v5

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    int-to-float v3, v6

    div-float/2addr v3, v1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v7, v1, v4, p0, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v7, v1, p0, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mBitmapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOverlayBitmap:Landroid/graphics/Bitmap;

    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mOverlayBitmap:Landroid/graphics/Bitmap;

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mShouldUpdateOverlayBitmap:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/PerfectMeGlComponent;->mIsOverlayProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
