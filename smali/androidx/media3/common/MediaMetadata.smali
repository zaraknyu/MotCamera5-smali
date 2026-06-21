.class public final Landroidx/media3/common/MediaMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Landroidx/media3/common/MediaMetadata;


# instance fields
.field public final albumArtist:Ljava/lang/CharSequence;

.field public final albumTitle:Ljava/lang/CharSequence;

.field public final artist:Ljava/lang/CharSequence;

.field public final artworkData:[B

.field public final artworkDataType:Ljava/lang/Integer;

.field public final composer:Ljava/lang/CharSequence;

.field public final conductor:Ljava/lang/CharSequence;

.field public final description:Ljava/lang/CharSequence;

.field public final discNumber:Ljava/lang/Integer;

.field public final folderType:Ljava/lang/Integer;

.field public final genre:Ljava/lang/CharSequence;

.field public final isBrowsable:Ljava/lang/Boolean;

.field public final mediaType:Ljava/lang/Integer;

.field public final recordingDay:Ljava/lang/Integer;

.field public final recordingMonth:Ljava/lang/Integer;

.field public final recordingYear:Ljava/lang/Integer;

.field public final releaseDay:Ljava/lang/Integer;

.field public final releaseMonth:Ljava/lang/Integer;

.field public final releaseYear:Ljava/lang/Integer;

.field public final station:Ljava/lang/CharSequence;

.field public final supportedCommands:Lcom/google/common/collect/ImmutableList;

.field public final title:Ljava/lang/CharSequence;

.field public final totalDiscCount:Ljava/lang/Integer;

.field public final totalTrackCount:Ljava/lang/Integer;

.field public final trackNumber:Ljava/lang/Integer;

.field public final writer:Ljava/lang/CharSequence;

.field public final year:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    new-instance v1, Landroidx/media3/common/MediaMetadata;

    invoke-direct {v1, v0}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    sput-object v1, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    const/16 v0, 0x9

    const/16 v1, 0xa

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/16 v4, 0x8

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    const/16 v0, 0xe

    const/16 v1, 0xf

    const/16 v2, 0xb

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    const/16 v0, 0x13

    const/16 v1, 0x14

    const/16 v2, 0x10

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    const/16 v0, 0x18

    const/16 v1, 0x19

    const/16 v2, 0x15

    const/16 v3, 0x16

    const/16 v4, 0x17

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    const/16 v0, 0x1d

    const/16 v1, 0x1e

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    const/16 v4, 0x1c

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    const/16 v0, 0x22

    const/16 v1, 0x3e8

    const/16 v2, 0x1f

    const/16 v3, 0x20

    const/16 v4, 0x21

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaMetadata$Builder;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->isBrowsable:Ljava/lang/Boolean;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    iget-object v2, p1, Landroidx/media3/common/MediaMetadata$Builder;->mediaType:Ljava/lang/Integer;

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_5

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v3, v5

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x2

    :goto_0
    :pswitch_6
    move v5, v3

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_4

    goto :goto_1

    :cond_4
    move v3, v5

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    const/16 v5, 0x14

    goto :goto_2

    :pswitch_7
    const/16 v5, 0x19

    goto :goto_2

    :pswitch_8
    const/16 v5, 0x18

    goto :goto_2

    :pswitch_9
    const/16 v5, 0x17

    goto :goto_2

    :pswitch_a
    const/16 v5, 0x16

    goto :goto_2

    :pswitch_b
    const/16 v5, 0x15

    :goto_2
    :pswitch_c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    :goto_3
    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->artworkData:[B

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iput-object v1, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->year:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    iget-object p1, p1, Landroidx/media3/common/MediaMetadata$Builder;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final buildUpon()Landroidx/media3/common/MediaMetadata$Builder;
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->artworkData:[B

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->isBrowsable:Ljava/lang/Boolean;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->mediaType:Ljava/lang/Integer;

    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    iput-object p0, v0, Landroidx/media3/common/MediaMetadata$Builder;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Landroidx/media3/common/MediaMetadata;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/MediaMetadata;

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 37

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iget-object v4, v0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iget-object v5, v0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iget-object v8, v0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    iget-object v13, v0, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iget-object v15, v0, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iget-object v6, v0, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iget-object v7, v0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    iget-object v9, v0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    const/16 v19, 0x0

    iget-object v10, v0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    iget-object v11, v0, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    iget-object v14, v0, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    move-object/from16 v36, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    move-object/from16 v23, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    move-object/from16 v26, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    move-object/from16 v27, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    move-object/from16 v28, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    move-object/from16 v29, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    move-object/from16 v30, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    const/16 v32, 0x0

    move-object/from16 v31, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    iget-object v0, v0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    move-object/from16 v34, v0

    move-object/from16 v33, v1

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v14

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    filled-new-array/range {v2 .. v36}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
