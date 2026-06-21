.class public final Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/media3/ui/PlayerControlView;

.field public final synthetic this$0$1:Landroidx/media3/ui/PlayerControlView;

.field public tracks:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlView;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0$1:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->tracks:Ljava/util/List;

    return-void
.end method

.method private final onTrackSelection$androidx$media3$ui$PlayerControlView$TextTrackSelectionAdapter(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasSelectionOverride(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    iget-object v2, v2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget-object v2, v2, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/RegularImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public init(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    move-object v4, p1

    check-cast v4, Lcom/google/common/collect/RegularImmutableList;

    iget v4, v4, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge v3, v4, :cond_1

    move-object v4, p1

    check-cast v4, Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    iget-object v5, v4, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget v4, v4, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackIndex:I

    iget-object v5, v5, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    aget-boolean v4, v5, v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v2, :cond_2

    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_3

    iget-object v0, v0, Landroidx/media3/ui/PlayerControlView;->subtitleOnContentDescription:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v0, v0, Landroidx/media3/ui/PlayerControlView;->subtitleOffContentDescription:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->tracks:Ljava/util/List;

    return-void
.end method

.method public onBindViewHolder(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;I)V
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->onBindViewHolder$androidx$media3$ui$PlayerControlView$TrackSelectionAdapter(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;I)V

    return-void

    .line 1
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->onBindViewHolder$androidx$media3$ui$PlayerControlView$TrackSelectionAdapter(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;I)V

    if-lez p2, :cond_1

    .line 2
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->tracks:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    .line 3
    iget-object p1, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    .line 4
    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    .line 5
    iget p0, p0, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackIndex:I

    .line 6
    iget-object p2, p2, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    .line 7
    aget-boolean p0, p2, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    .line 8
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 9
    check-cast p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->onBindViewHolder(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;I)V

    return-void

    .line 10
    :pswitch_0
    check-cast p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->onBindViewHolder(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder$androidx$media3$ui$PlayerControlView$TrackSelectionAdapter(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;I)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0$1:Landroidx/media3/ui/PlayerControlView;

    iget-object v0, v0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_5

    iget p2, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iget-object p2, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x7f1201cd

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    iget-object p2, p2, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getTrackSelectionParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->hasSelectionOverride(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Z

    move-result p2

    iget-object v0, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :pswitch_0
    iget-object p2, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x7f1201ce

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 p2, 0x0

    move v0, p2

    :goto_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    iget-object v2, v1, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget v1, v1, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackIndex:I

    iget-object v2, v2, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_2

    move v0, p2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_2
    iget-object v1, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 p2, 0x4

    :goto_3
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;

    const/4 v0, 0x3

    invoke-direct {p2, v0, p0}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->tracks:Ljava/util/List;

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    iget-object v1, p2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget-object v1, v1, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    move-object v3, v0

    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getTrackSelectionParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-object v3, p2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget v5, p2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackIndex:I

    iget-object v3, v3, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move v2, v4

    :goto_5
    iget-object v3, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    iget-object v5, p2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    const/4 v4, 0x4

    :goto_6
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1, p2}, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;Landroidx/media3/common/Player;Landroidx/media3/common/TrackGroup;Landroidx/media3/ui/PlayerControlView$TrackInformation;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0$1:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d0069

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;

    invoke-direct {p1, p0}, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
