.class public final synthetic Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/AudioFocusManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/AudioFocusManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/AudioFocusManager;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x3

    const/4 v1, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const-string p0, "AudioFocusManager"

    const-string v0, "Unknown focus change type: "

    invoke-static {v0, p1, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$2(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/AudioFocusManager;->executePlayerCommand(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->executePlayerCommand(I)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusIfHeld()V

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return-void

    :cond_2
    if-eq p1, v1, :cond_3

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return-void

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AudioFocusManager;->executePlayerCommand(I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return-void
.end method
