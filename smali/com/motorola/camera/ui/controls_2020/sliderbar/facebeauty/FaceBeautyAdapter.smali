.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public degree:I

.field public features:Ljava/util/ArrayList;

.field public listener:Lcom/google/android/gms/tasks/zzb;


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;->features:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;->features:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "get(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget-object v3, v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v6, :cond_1

    const v7, 0x7f060035

    if-eq v3, v5, :cond_3

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const v7, 0x7f0604a2

    goto :goto_0

    :cond_2
    const v7, 0x7f0604a9

    :cond_3
    :goto_0
    iget-object v3, v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v8, 0x0

    if-eq v3, v5, :cond_5

    if-eq v3, v4, :cond_6

    :cond_4
    move v6, v8

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    :cond_6
    :goto_1
    iget v3, v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->image:I

    iget v2, v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->text:I

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "getText(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0xb

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v4, v3

    invoke-virtual {v1, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyViewHolder;->contentLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;->degree:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, v1}, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string/jumbo p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d006d

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
