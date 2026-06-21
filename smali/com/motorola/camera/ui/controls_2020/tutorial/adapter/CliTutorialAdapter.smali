.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public degree:I

.field public screenList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialAdapter;->screenList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialAdapter;->screenList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialAdapter;->screenList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialViewHolder;->contentImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialViewHolder;->contentHeader:Landroid/widget/TextView;

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialViewHolder;->contentText:Landroid/widget/TextView;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0123

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialAdapter;->degree:I

    if-eqz p0, :cond_1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07009a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07009b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    new-instance p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialViewHolder;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method
