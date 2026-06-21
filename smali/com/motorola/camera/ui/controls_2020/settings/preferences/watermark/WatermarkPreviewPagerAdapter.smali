.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$Companion;,
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00152\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0002\u0015\u0016B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006H\u0016J\u001c\u0010\r\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0006H\u0016J\u001c\u0010\u0011\u001a\u00020\u00122\n\u0010\u0013\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0006H\u0016J\u0008\u0010\u0014\u001a\u00020\u0006H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;",
        "<init>",
        "()V",
        "selectedPosition",
        "",
        "getSelectedPosition",
        "()I",
        "setSelectedPosition",
        "(I)V",
        "getItemViewType",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "",
        "holder",
        "getItemCount",
        "Companion",
        "PagerViewHolder",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$Companion;

.field private static final VIEW_TYPE_BORDER:I = 0x1

.field private static final VIEW_TYPE_NORMAL:I


# instance fields
.field private selectedPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;->selectedPosition:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getWatermarkStyles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getWatermarkStyles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    filled-new-array {v0}, [Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;->isStyle(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;[Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Z

    move-result p0

    return p0
.end method

.method public final getSelectedPosition()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;->selectedPosition:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;->onBindViewHolder(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getWatermarkStyles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    .line 4
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;

    move-result-object v2

    .line 5
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->createPreviewBitmap(Landroid/content/Context;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;->getSelectedIcon()Landroid/widget/RadioButton;

    move-result-object p1

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;->selectedPosition:I

    if-ne p2, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;
    .locals 3

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const p2, 0x7f0d010f

    goto :goto_0

    :cond_0
    const p2, 0x7f0d010e

    .line 3
    :goto_0
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public final setSelectedPosition(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;->selectedPosition:I

    return-void
.end method
