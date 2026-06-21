.class public final Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;
.super Landroidx/media3/decoder/DecoderOutputBuffer;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# instance fields
.field public final synthetic $r8$classId:I

.field public subsampleOffsetUs:J

.field public subtitle:Landroidx/media3/extractor/text/Subtitle;

.field public this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->$r8$classId:I

    invoke-direct {p0}, Landroidx/media3/decoder/Buffer;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroidx/media3/decoder/Buffer;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/decoder/DecoderOutputBuffer;->timeUs:J

    iput-boolean v0, p0, Landroidx/media3/decoder/DecoderOutputBuffer;->shouldBeSkipped:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    return-void
.end method

.method public final getCues(J)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->subsampleOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/text/Subtitle;->getCues(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getEventTime(I)J
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide v0

    iget-wide p0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->subsampleOffsetUs:J

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public final getEventTimeCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/media3/extractor/text/Subtitle;->getEventTimeCount()I

    move-result p0

    return p0
.end method

.method public final getNextEventTimeIndex(J)I
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->subsampleOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/text/Subtitle;->getNextEventTimeIndex(J)I

    move-result p0

    return p0
.end method

.method public final release()V
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    iget-object v0, v0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->clear()V

    iget-object v0, v0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->releaseOutputBuffer(Landroidx/media3/decoder/DecoderOutputBuffer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
