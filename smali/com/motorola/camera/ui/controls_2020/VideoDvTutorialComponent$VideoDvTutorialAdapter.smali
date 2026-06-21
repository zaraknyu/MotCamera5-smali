.class public final Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonShuffleThumbnailAdapter$ThumbnailViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    const-string p2, "cartoon"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonShuffleThumbnailAdapter$ThumbnailViewHolder;->imageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->thumbnailId:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonShuffleThumbnailAdapter$ThumbnailViewHolder;->lottieView:Lcom/airbnb/lottie/LottieAnimationView;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->lottieId:I

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    new-instance p0, Lcom/motorola/camera/ui/widgets/LevelerView$1;

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/LevelerView$1;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object p1, p1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialHolder;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialHolder;->radios:Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialHolder;->horizontalRadio:Landroidx/appcompat/widget/AppCompatRadioButton;

    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialHolder;->verticalRadio:Landroidx/appcompat/widget/AppCompatRadioButton;

    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialHolder;->textView:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialHolder;->animation:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eqz p2, :cond_4

    const/4 v8, 0x1

    if-eq p2, v8, :cond_3

    const/4 v9, 0x2

    if-eq p2, v9, :cond_0

    goto :goto_2

    :cond_0
    const p2, 0x7f120656

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/PreviewSize$AspectRatio;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mCurrentRatio:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE9V16:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-eq p2, v3, :cond_2

    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE9V22:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    move p2, v7

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v8

    :goto_1
    invoke-virtual {v2, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    xor-int/2addr p2, v8

    invoke-virtual {v1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {p2, v3, p1, p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p2, v1, p1, p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_2
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_3
    const p0, 0x7f120651

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p0, 0x7f11004b

    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    goto :goto_3

    :cond_4
    const p0, 0x7f120652

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p0, 0x7f11004c

    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    :goto_3
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d00fb

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonShuffleThumbnailAdapter$ThumbnailViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonShuffleThumbnailAdapter$ThumbnailViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :pswitch_0
    const-string/jumbo p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d012f

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialHolder;-><init>(Landroid/view/View;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
