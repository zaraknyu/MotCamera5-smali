.class public final synthetic Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

.field public final synthetic f$1:Landroidx/media3/common/Player;

.field public final synthetic f$2:Landroidx/media3/common/TrackGroup;

.field public final synthetic f$3:Landroidx/media3/ui/PlayerControlView$TrackInformation;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;Landroidx/media3/common/Player;Landroidx/media3/common/TrackGroup;Landroidx/media3/ui/PlayerControlView$TrackInformation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    iput-object p2, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/common/Player;

    iput-object p3, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$2:Landroidx/media3/common/TrackGroup;

    iput-object p4, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$3:Landroidx/media3/ui/PlayerControlView$TrackInformation;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/common/Player;

    check-cast p1, Landroidx/media3/common/BasePlayer;

    const/16 v0, 0x1d

    invoke-virtual {p1, v0}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getTrackSelectionParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    new-instance v0, Landroidx/media3/common/TrackSelectionOverride;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$3:Landroidx/media3/ui/PlayerControlView$TrackInformation;

    iget v3, v2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$2:Landroidx/media3/common/TrackGroup;

    invoke-direct {v0, v4, v3}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    iget-object v3, v0, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget v4, v3, Landroidx/media3/common/TrackGroup;->type:I

    invoke-virtual {v1, v4}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverridesOfType(I)V

    iget-object v4, v1, Landroidx/media3/common/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget-object v0, v0, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget v0, v0, Landroidx/media3/common/TrackGroup;->type:I

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setTrackTypeDisabled(I)V

    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    iget-object p1, v2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackName:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    iget v0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    iget-object v0, v0, Landroidx/media3/ui/PlayerControlView;->settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    aput-object p1, v0, v1

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0$1:Landroidx/media3/ui/PlayerControlView;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
