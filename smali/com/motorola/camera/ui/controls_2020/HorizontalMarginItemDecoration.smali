.class public final Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final margin:Ljava/lang/Object;

.field public final percentage:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;->margin:Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;->percentage:Ljava/lang/Object;

    const/high16 p0, 0x40a00000    # 5.0f

    .line 4
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const p0, -0xff01

    .line 5
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;->margin:Ljava/lang/Object;

    .line 8
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;->percentage:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;->percentage:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    const-string v1, "outRect"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "view"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "state"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;->margin:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/2addr p2, p0

    div-int/lit8 p0, p2, 0x64

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iput p0, p1, Landroid/graphics/Rect;->right:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;->margin:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;->percentage:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0xff01

    const/4 v1, 0x0

    const v2, -0xffff01

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget-object v0, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Landroidx/media3/decoder/Buffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/Buffer;->getParentTop()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget-object v0, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Landroidx/media3/decoder/Buffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/Buffer;->getParentBottom()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    move-object v1, p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget-object p1, p1, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Landroidx/media3/decoder/Buffer;

    invoke-virtual {p1}, Landroidx/media3/decoder/Buffer;->getParentLeft()I

    move-result p1

    int-to-float v2, p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget-object p1, p1, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Landroidx/media3/decoder/Buffer;

    invoke-virtual {p1}, Landroidx/media3/decoder/Buffer;->getParentRight()I

    move-result p1

    int-to-float v4, p1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1
    move-object p1, v1

    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
