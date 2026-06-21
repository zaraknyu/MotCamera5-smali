.class public final Landroidx/media3/common/audio/AudioFocusRequestCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final audioAttributes:Landroidx/media3/common/AudioAttributes;

.field public final focusChangeHandler:Landroid/os/Handler;

.field public final focusGain:I

.field public final frameworkAudioFocusRequest:Landroid/media/AudioFocusRequest;

.field public final onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>(ILandroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroidx/media3/common/AudioAttributes;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->focusGain:I

    iput-object p3, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->focusChangeHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    new-instance v2, Landroidx/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;

    invoke-direct {v2, p2, p3}, Landroidx/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)V

    iput-object v2, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    :goto_0
    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, p1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {p4}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/room/ObservedTableVersions;

    move-result-object p1

    iget-object p1, p1, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p1, Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->frameworkAudioFocusRequest:Landroid/media/AudioFocusRequest;

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->frameworkAudioFocusRequest:Landroid/media/AudioFocusRequest;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/audio/AudioFocusRequestCompat;

    iget v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->focusGain:I

    iget v1, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat;->focusGain:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v1, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->focusChangeHandler:Landroid/os/Handler;

    iget-object v1, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat;->focusChangeHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object p1, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat;->audioAttributes:Landroidx/media3/common/AudioAttributes;

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
    .locals 4

    iget v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->focusGain:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object p0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->focusChangeHandler:Landroid/os/Handler;

    filled-new-array {v0, v3, p0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
