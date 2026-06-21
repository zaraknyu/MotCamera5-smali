.class public final Landroidx/media3/extractor/flv/AudioTagPayloadReader;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"


# static fields
.field public static final AUDIO_SAMPLING_RATE_TABLE:[I


# instance fields
.field public audioFormat:I

.field public hasOutputFormat:Z

.field public hasParsedAudioDataHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x5622

    const v1, 0xac44

    const/16 v2, 0x1588

    const/16 v3, 0x2b11

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    return-void
.end method
