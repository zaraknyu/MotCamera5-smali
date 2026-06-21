.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final holderList:Ljava/util/ArrayList;

.field public final selectorList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const-string/jumbo v0, "selectorList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;->selectorList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;->holderList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;->selectorList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;->selectorList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "get(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->drawableRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorViewHolder;->selectImage:Landroid/widget/ImageView;

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->value:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getImagePreferenceSelectorValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorViewHolder;->primaryTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->title:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->description:I

    invoke-static {p2, p0}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    const v0, 0x7f0d0074

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorViewHolder;-><init>(Landroid/view/View;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;->holderList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public final supportAICustomizeColorTone()Z
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;->selectorList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    iget v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->value:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
