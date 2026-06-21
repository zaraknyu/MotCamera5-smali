.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PagerViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "<init>",
        "(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;Landroid/view/View;)V",
        "imageView",
        "Landroid/widget/ImageView;",
        "getImageView",
        "()Landroid/widget/ImageView;",
        "selectedIcon",
        "Landroid/widget/RadioButton;",
        "getSelectedIcon",
        "()Landroid/widget/RadioButton;",
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


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field private final selectedIcon:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0521

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;->imageView:Landroid/widget/ImageView;

    const p1, 0x7f0a0522

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;->selectedIcon:Landroid/widget/RadioButton;

    return-void
.end method


# virtual methods
.method public final getImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getSelectedIcon()Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter$PagerViewHolder;->selectedIcon:Landroid/widget/RadioButton;

    return-object p0
.end method
