.class public final Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public items:Ljava/lang/Object;

.field public onItemClickListener:Lkotlin/jvm/functions/Function2;

.field public selectedMode:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->$r8$classId:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/enums/EnumEntriesList;ILkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->$r8$classId:I

    const-string v0, "cartoonCards"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/lang/Object;

    .line 4
    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->selectedMode:I

    .line 5
    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->onItemClickListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;->lottieView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->selectedMode:I

    const/4 v4, 0x0

    if-ne p2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3, p1}, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;ZLcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v5, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;

    const/16 v6, 0x1b

    invoke-direct {v5, v6, p1}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x8

    if-nez v3, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_2

    move v2, v4

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "null cannot be cast to non-null type com.google.android.material.card.MaterialCardView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v4, v2

    :cond_3
    invoke-virtual {p1, v4}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    const-string p1, "cartoon"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->thumbnailId:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->lottieId:I

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    return-void

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;->iconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/lang/Object;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "getResources(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x24

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v4, :cond_4

    move v4, v6

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    if-eqz v4, :cond_5

    const/16 v4, 0xc

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/motorola/camera/settings/Setting;->getString(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "getString(...)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v8, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;->itemParentView:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v1, p1, p2}, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;ILcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/motorola/camera/settings/Setting;->getAndroidIcon(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    const-string v3, "getAndroidIcon(...)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v4, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->selectedMode:I

    if-ne v1, p0, :cond_6

    move v5, v6

    :cond_6
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v5, :cond_7

    const p1, 0x7f060405

    goto :goto_4

    :cond_7
    const p1, 0x7f0604a2

    :goto_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    const-string/jumbo p2, "valueOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d00f9

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :pswitch_0
    const-string/jumbo p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p2, 0x0

    const v0, 0x7f0d009e

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;->nameTextView:Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;->nameTextView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
