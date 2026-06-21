.class public abstract Landroidx/media3/common/audio/BaseAudioProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/audio/AudioProcessor;


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field public inputEnded:Z

.field public outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field public outputBuffer:Ljava/nio/ByteBuffer;

.field public pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field public pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    return-void
.end method


# virtual methods
.method public final configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-virtual {p0, p1}, Landroidx/media3/common/audio/BaseAudioProcessor;->onConfigure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-virtual {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    return-object p0
.end method

.method public final flush()V
    .locals 1

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputEnded:Z

    iget-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-virtual {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->onFlush()V

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract onConfigure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
.end method

.method public onFlush()V
    .locals 0

    return-void
.end method

.method public onQueueEndOfStream()V
    .locals 0

    return-void
.end method

.method public onReset()V
    .locals 0

    return-void
.end method

.method public final queueEndOfStream()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputEnded:Z

    invoke-virtual {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->onQueueEndOfStream()V

    return-void
.end method

.method public final replaceOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object p1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final reset()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->flush()V

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-virtual {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->onReset()V

    return-void
.end method
