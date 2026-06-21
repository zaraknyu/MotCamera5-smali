.class public final Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mListener:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$OnItemClickListener;

.field public final mSettings:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$OnItemClickListener;)V
    .locals 1

    const-string/jumbo v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mSettings:Ljava/util/List;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mListener:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public final defaultState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;Z)V
    .locals 4

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f0604a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v3, 0x7f0603ed

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    const/16 p0, 0x60

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    const p0, 0x3ec28f5c    # 0.38f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    const/16 p0, 0xff

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mSettings:Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->onBindViewHolder(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3

    .line 2
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;

    .line 3
    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "payloads"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->onBindViewHolder(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mSettings:Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    .line 8
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureCompDisabled()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->defaultState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;Z)V

    return-void

    .line 11
    :cond_2
    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->isDefaultValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->selectedDefaultState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;)V

    return-void

    .line 14
    :cond_3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->selectedCustomState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onBindViewHolder(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->root:Landroid/widget/LinearLayout;

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mSettings:Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    .line 16
    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->imageView:Landroid/widget/ImageView;

    .line 17
    iget v3, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->icon:I

    .line 18
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 21
    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->descriptionWhenOpened:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->isDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->selectedDefaultState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;)V

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->selectedCustomState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;)V

    goto :goto_0

    .line 26
    :cond_1
    iget-object v4, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->descriptionWhenClosed:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->isDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 30
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 31
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureCompDisabled()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->defaultState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->defaultState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;Z)V

    goto :goto_0

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x7f060405

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 36
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 37
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v4, 0x7f0603ed

    .line 38
    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 39
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 40
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 42
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 v0, 0xff

    .line 43
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 44
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 45
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0}, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;-><init>(ILcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00e4

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    const/high16 v1, 0x429c0000    # 78.0f

    invoke-static {v0, v1}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->getItemCount()I

    move-result v2

    mul-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    if-le v0, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v1

    sub-int/2addr p2, v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->getItemCount()I

    move-result p0

    div-int/2addr p2, p0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    new-instance p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public final selectedCustomState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;)V
    .locals 3

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f060037

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f060405

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final selectedDefaultState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;)V
    .locals 3

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f060037

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f0604a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
