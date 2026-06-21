.class public final Lcom/google/android/material/carousel/CarouselOrientationHelper$1;
.super Landroidx/media3/decoder/Buffer;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method public constructor <init>(Lcom/google/android/material/carousel/CarouselLayoutManager;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 p1, 0x4

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getParentBottom()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getParentLeft()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getParentRight()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getParentStart()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getParentTop()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
