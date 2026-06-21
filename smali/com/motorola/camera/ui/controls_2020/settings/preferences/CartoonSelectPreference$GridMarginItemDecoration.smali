.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonSelectPreference$GridMarginItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final marginInPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0704f9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonSelectPreference$GridMarginItemDecoration;->marginInPx:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string p3, "outRect"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "view"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "state"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string p4, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager.LayoutParams"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    iget p2, p2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sget-object p4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p4}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p4

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonSelectPreference$GridMarginItemDecoration;->marginInPx:I

    const/4 v0, 0x2

    if-eqz p4, :cond_0

    mul-int p4, p2, p0

    div-int/2addr p4, v0

    iput p4, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p2, p0

    div-int/2addr p2, v0

    sub-int p2, p0, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    mul-int p4, p2, p0

    div-int/2addr p4, v0

    iput p4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p2, p0

    div-int/2addr p2, v0

    sub-int p2, p0, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    if-lt p3, v0, :cond_1

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    return-void
.end method
