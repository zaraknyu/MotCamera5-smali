.class public abstract Landroidx/media3/common/BasePlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;
.implements Landroidx/media3/common/Player;
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
.implements Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;


# instance fields
.field public final synthetic $r8$classId:I

.field public final window:Ljava/lang/Object;


# direct methods
.method public static synthetic $$$reportNull$$$0(I)V
    .locals 7

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v2, 0x2

    if-eq p0, v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl"

    const/4 v5, 0x0

    if-eq p0, v0, :cond_2

    const-string v6, "annotations"

    aput-object v6, v3, v5

    goto :goto_2

    :cond_2
    aput-object v4, v3, v5

    :goto_2
    if-eq p0, v0, :cond_3

    aput-object v4, v3, v0

    goto :goto_3

    :cond_3
    const-string v4, "getAnnotations"

    aput-object v4, v3, v0

    :goto_3
    if-eq p0, v0, :cond_4

    const-string v4, "<init>"

    aput-object v4, v3, v2

    :cond_4
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0
.end method

.method public static synthetic $$$reportNull$$$0$1(I)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue"

    const/4 v5, 0x0

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    const-string/jumbo v6, "receiverType"

    aput-object v6, v3, v5

    goto :goto_2

    :cond_2
    aput-object v4, v3, v5

    :goto_2
    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_3

    aput-object v4, v3, v1

    goto :goto_3

    :cond_3
    const-string v4, "getOriginal"

    aput-object v4, v3, v1

    goto :goto_3

    :cond_4
    const-string v4, "getType"

    aput-object v4, v3, v1

    :goto_3
    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    const-string v4, "<init>"

    aput-object v4, v3, v0

    :cond_5
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/common/BasePlayer;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    .line 8
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    return-void

    .line 10
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    return-void

    .line 12
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    return-void

    .line 14
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    return-void

    .line 16
    :pswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/BasePlayer;->$r8$classId:I

    iput-object p2, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroidx/media3/common/BasePlayer;->$r8$classId:I

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Landroidx/media3/common/BasePlayer;->$r8$classId:I

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 4
    invoke-static {p0}, Landroidx/media3/common/BasePlayer;->$$$reportNull$$$0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Landroidx/media3/common/BasePlayer;->$r8$classId:I

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 7
    invoke-static {p0}, Landroidx/media3/common/BasePlayer;->$$$reportNull$$$0$1(I)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public abstract create(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract doOperation()Ljava/lang/Object;
.end method

.method public execute()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x3

    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->doOperation()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    if-eqz v0, :cond_2

    instance-of v2, v1, Lcom/motorola/camera/storage/exception/DisconnectedException;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lcom/motorola/camera/storage/exception/VolumeNotFoundException;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-static {v2}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getVolumeName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "external"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "external_primary"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-wide/16 v1, 0xfa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    throw v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/BasePlayer;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, Landroidx/media3/common/BasePlayer;->$$$reportNull$$$0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getContentDuration()J
    .locals 4

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, p0, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentMediaItem()Landroidx/media3/common/MediaItem;
    .locals 4

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, p0, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method public getKeyframes()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, Landroidx/media3/common/BasePlayer;->$$$reportNull$$$0$1(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public ignoreSeek()V
    .locals 0

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    return-void
.end method

.method public isCommandAvailable(I)Z
    .locals 0

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    iget-object p0, p0, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    iget-object p0, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public isCurrentMediaItemDynamic()Z
    .locals 4

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, p0, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCurrentMediaItemLive()Z
    .locals 4

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, p0, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCurrentMediaItemSeekable()Z
    .locals 4

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, p0, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStatic()Z
    .locals 3

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1
.end method

.method public abstract newInstance()Ljava/lang/Object;
.end method

.method public abstract resetInstance(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract seekTo(JIZ)V
.end method

.method public seekToCurrentItem(IJ)V
    .locals 1

    move-object p1, p0

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p1, v0}, Landroidx/media3/common/BasePlayer;->seekTo(JIZ)V

    return-void
.end method

.method public seekToNext()V
    .locals 10

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    if-ne v6, v4, :cond_2

    move v6, v5

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean v7, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v1, v2, v6, v7}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v1

    :goto_0
    if-eq v1, v3, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v5

    :goto_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget v8, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    if-ne v8, v4, :cond_5

    move v8, v5

    :cond_5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v1, v2, v8, v9}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v1

    :goto_2
    if-ne v1, v3, :cond_6

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->ignoreSeek()V

    return-void

    :cond_6
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    if-ne v1, v2, :cond_7

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-virtual {p0, v6, v7, v0, v4}, Landroidx/media3/common/BasePlayer;->seekTo(JIZ)V

    return-void

    :cond_7
    invoke-virtual {p0, v6, v7, v1, v5}, Landroidx/media3/common/BasePlayer;->seekTo(JIZ)V

    return-void

    :cond_8
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-virtual {p0, v6, v7, v0, v5}, Landroidx/media3/common/BasePlayer;->seekTo(JIZ)V

    return-void

    :cond_9
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->ignoreSeek()V

    return-void

    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->ignoreSeek()V

    return-void
.end method

.method public seekToOffset(IJ)V
    .locals 5

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getDuration()J

    move-result-wide p2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v3

    if-eqz v0, :cond_0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_0
    const-wide/16 p2, 0x0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(IJ)V

    return-void
.end method

.method public seekToPrevious()V
    .locals 10

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    if-ne v6, v4, :cond_2

    move v6, v5

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean v7, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v1, v2, v6, v7}, Landroidx/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v1

    :goto_0
    if-eq v1, v3, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v5

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget v8, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    if-ne v8, v4, :cond_5

    move v8, v5

    :cond_5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v1, v2, v8, v9}, Landroidx/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v1

    :goto_2
    if-ne v1, v3, :cond_6

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->ignoreSeek()V

    return-void

    :cond_6
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    if-ne v1, v2, :cond_7

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-virtual {p0, v6, v7, v0, v4}, Landroidx/media3/common/BasePlayer;->seekTo(JIZ)V

    return-void

    :cond_7
    invoke-virtual {p0, v6, v7, v1, v5}, Landroidx/media3/common/BasePlayer;->seekTo(JIZ)V

    return-void

    :cond_8
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->ignoreSeek()V

    return-void

    :cond_9
    if-eqz v1, :cond_e

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-wide v8, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maxSeekToPreviousPositionMs:J

    cmp-long v1, v1, v8

    if-gtz v1, :cond_e

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    move v1, v3

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget v8, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    if-ne v8, v4, :cond_b

    move v8, v5

    :cond_b
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v1, v2, v8, v9}, Landroidx/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v1

    :goto_3
    if-ne v1, v3, :cond_c

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->ignoreSeek()V

    return-void

    :cond_c
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    if-ne v1, v2, :cond_d

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-virtual {p0, v6, v7, v0, v4}, Landroidx/media3/common/BasePlayer;->seekTo(JIZ)V

    return-void

    :cond_d
    invoke-virtual {p0, v6, v7, v1, v5}, Landroidx/media3/common/BasePlayer;->seekTo(JIZ)V

    return-void

    :cond_e
    const-wide/16 v0, 0x0

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v1}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(IJ)V

    return-void

    :cond_f
    :goto_4
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->ignoreSeek()V

    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 17

    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    move-object/from16 v1, p0

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, v0, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge v4, v5, :cond_0

    invoke-virtual {v0, v4}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/MediaItem;

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {v6, v5}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/BaseMediaSource;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    :goto_1
    if-ltz v6, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    iget-object v7, v6, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v8, v7

    sub-int/2addr v8, v5

    new-array v8, v8, [I

    move v9, v3

    move v10, v9

    :goto_2
    array-length v11, v7

    if-ge v9, v11, :cond_4

    aget v11, v7, v9

    if-ltz v11, :cond_2

    if-ge v11, v5, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_2
    sub-int v12, v9, v10

    if-ltz v11, :cond_3

    sub-int/2addr v11, v5

    :cond_3
    aput v11, v8, v12

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    new-instance v5, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v7, Ljava/util/Random;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v9

    invoke-direct {v7, v9, v10}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v5, v8, v7}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    new-instance v6, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-boolean v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->useLazyPreparation:Z

    invoke-direct {v6, v7, v8}, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/BaseMediaSource;Z)V

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    iget-object v8, v6, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    iget-object v6, v6, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-direct {v7, v8, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;-><init>(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MaskingMediaSource;)V

    invoke-virtual {v0, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->cloneAndInsert(I)Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v2, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {v2, v0, v5}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const/4 v5, -0x1

    iget v6, v2, Landroidx/media3/exoplayer/PlaylistTimeline;->windowCount:I

    if-nez v0, :cond_8

    if-ge v5, v6, :cond_7

    goto :goto_5

    :cond_7
    new-instance v0, Landroidx/media3/common/IllegalSeekPositionException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_8
    :goto_5
    iget-boolean v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/PlaylistTimeline;->getFirstWindowIndex(Z)I

    move-result v14

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v1, v2, v14, v7, v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v9

    invoke-virtual {v1, v0, v2, v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iget v9, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v14, v5, :cond_b

    if-eq v9, v4, :cond_b

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    if-lt v14, v6, :cond_9

    goto :goto_6

    :cond_9
    const/4 v9, 0x2

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v9, 0x4

    :cond_b
    :goto_7
    invoke-static {v0, v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskPlaybackState(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v15

    iget-object v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    invoke-direct/range {v11 .. v16}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;IJ)V

    const/16 v5, 0x11

    invoke-virtual {v0, v5, v11}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v5, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_8

    :cond_c
    move v4, v3

    :goto_8
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v6

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v1 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public take()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->newInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->resetInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/media3/common/BasePlayer;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public visit(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V
    .locals 0

    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->visitEnd([Ljava/lang/String;)V

    return-void
.end method

.method public abstract visitEnd([Ljava/lang/String;)V
.end method

.method public visitEnum(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 0

    return-void
.end method
