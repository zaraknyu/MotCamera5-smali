.class public final Lcom/google/zxing/qrcode/decoder/Version$ECB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public count:I

.field public dataCodewords:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    iput p2, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized block()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getEncoding()I
    .locals 1

    iget p0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0xf

    return p0

    :cond_1
    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_2
    const/16 p0, 0x10

    return p0

    :cond_3
    const/16 p0, 0xc

    return p0

    :cond_4
    const/16 p0, 0xb

    return p0

    :cond_5
    const/16 p0, 0xa

    return p0
.end method

.method public setFrom(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    return-void
.end method
