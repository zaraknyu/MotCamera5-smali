.class public final Landroidx/media3/exoplayer/AudioFocusManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public audioAttributes:Landroidx/media3/common/AudioAttributes;

.field public audioFocusRequest:Landroidx/media3/common/audio/AudioFocusRequestCompat;

.field public audioFocusState:I

.field public final audioManager:Lcom/google/common/base/Supplier;

.field public final eventHandler:Landroid/os/Handler;

.field public focusGainToRequest:I

.field public playerControl:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field public volumeMultiplier:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    new-instance v0, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    instance-of p1, v0, Ljava/io/Serializable;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/common/base/Suppliers$MemoizingSupplier;

    invoke-direct {p1, v0}, Lcom/google/common/base/Suppliers$MemoizingSupplier;-><init>(Lcom/google/common/base/Supplier;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;

    invoke-direct {p1, v0}, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;-><init>(Lcom/google/common/base/Supplier;)V

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Lcom/google/common/base/Supplier;

    iput-object p3, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->eventHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    return-void
.end method


# virtual methods
.method public final abandonAudioFocusIfHeld()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object p0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    iget-object p0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->frameworkAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final executePlayerCommand(I)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final setAudioFocusState(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iput p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    iget-object p0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    if-eqz p0, :cond_3

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final updateAudioFocus(IZ)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    iget p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    if-ne p1, v1, :cond_8

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-eqz p2, :cond_5

    iget p2, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Lcom/google/common/base/Splitter;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-direct {p2, v5, v4}, Lcom/google/common/base/Splitter;-><init>(CI)V

    sget-object v4, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object v4, p2, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    iput p1, p2, Lcom/google/common/base/Splitter;->limit:I

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/common/base/Splitter;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-direct {p1, v5, v4}, Lcom/google/common/base/Splitter;-><init>(CI)V

    iget v4, p2, Landroidx/media3/common/audio/AudioFocusRequestCompat;->focusGain:I

    iput v4, p1, Lcom/google/common/base/Splitter;->limit:I

    iget-object v4, p2, Landroidx/media3/common/audio/AudioFocusRequestCompat;->focusChangeHandler:Landroid/os/Handler;

    iput-object v4, p1, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    iget-object p2, p2, Landroidx/media3/common/audio/AudioFocusRequestCompat;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iput-object p2, p1, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    move-object p2, p1

    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    new-instance p1, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/AudioFocusManager;)V

    iget-object v4, p0, Landroidx/media3/exoplayer/AudioFocusManager;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, p2, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    new-instance v5, Landroidx/media3/common/audio/AudioFocusRequestCompat;

    iget v6, p2, Lcom/google/common/base/Splitter;->limit:I

    iget-object p2, p2, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/common/AudioAttributes;

    invoke-direct {v5, v6, p1, v4, p2}, Landroidx/media3/common/audio/AudioFocusRequestCompat;-><init>(ILandroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroidx/media3/common/AudioAttributes;)V

    iput-object v5, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Lcom/google/common/base/Supplier;

    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iget-object p2, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_3

    iget-object p2, p2, Landroidx/media3/common/audio/AudioFocusRequestCompat;->frameworkAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    goto :goto_2

    :cond_3
    iget-object v4, p2, Landroidx/media3/common/audio/AudioFocusRequestCompat;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v5, p2, Landroidx/media3/common/audio/AudioFocusRequestCompat;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p2, Landroidx/media3/common/audio/AudioFocusRequestCompat;->focusGain:I

    invoke-virtual {p1, v4, v2, p2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    :goto_2
    if-ne p1, v1, :cond_4

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return v1

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return v3

    :cond_5
    iget p0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    if-eq p0, v1, :cond_7

    if-eq p0, v2, :cond_6

    :goto_3
    return v1

    :cond_6
    return v0

    :cond_7
    return v3

    :cond_8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusIfHeld()V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return v1
.end method
