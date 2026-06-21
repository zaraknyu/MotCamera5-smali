.class public abstract Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

.field public static final mRectFPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    new-instance v0, Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mRectFPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    return-void
.end method

.method public static getMatrixScale(Landroid/graphics/Matrix;)[F
    .locals 4

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p0, 0x0

    aget v2, v1, p0

    const/4 v3, 0x4

    aget v1, v1, v3

    new-array v0, v0, [F

    aput v2, v0, p0

    const/4 p0, 0x1

    aput v1, v0, p0

    return-object v0

    :cond_0
    new-array p0, v0, [F

    return-object p0
.end method

.method public static matrixGiven(Landroid/graphics/Matrix;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    iget-object v0, v0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedList;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
