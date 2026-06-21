.class public final Landroidx/media3/extractor/text/pgs/PgsParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;


# static fields
.field public static volatile instance:Landroidx/media3/extractor/text/pgs/PgsParser;


# instance fields
.field public final synthetic $r8$classId:I

.field public buffer:Ljava/lang/Object;

.field public cueBuilder:Ljava/lang/Object;

.field public inflatedBuffer:Ljava/lang/Object;

.field public inflater:Ljava/lang/Object;


# direct methods
.method public static -$$Nest$mrunOnExecutor(Landroidx/media3/extractor/text/pgs/PgsParser;Lcom/motorola/camera/mcf/Mcf$8;)V
    .locals 3

    const-string/jumbo v0, "trying to execute "

    iget-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "ThumbnailEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with stopped executor"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    .line 26
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    .line 27
    new-instance p1, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

    invoke-direct {p1}, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    return-void

    .line 28
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance p1, Landroidx/compose/foundation/lazy/layout/Averages;

    .line 30
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    .line 32
    sget-object p1, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 33
    new-instance p1, Landroidx/collection/MutableScatterMap;

    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 34
    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    return-void

    .line 35
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    .line 37
    sget-boolean v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->ENABLE_NEW_ENGINE:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_0
    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-direct {v2, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I)V

    .line 39
    iput-object v2, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    .line 40
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getThumbnailDirectory()Ljava/io/File;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const/16 v0, 0x32

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    .line 42
    :goto_2
    new-instance v2, Lcom/google/common/base/Splitter;

    invoke-direct {v2, v1, v0}, Lcom/google/common/base/Splitter;-><init>(Ljava/io/File;I)V

    move-object v0, v2

    .line 43
    :goto_3
    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    .line 44
    monitor-enter p1

    .line 45
    :try_start_0
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_4

    .line 46
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(I)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 47
    :cond_4
    :goto_4
    monitor-exit p1

    return-void

    :goto_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->$r8$classId:I

    const-string/jumbo v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultExtras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    .line 20
    iput-object p3, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    .line 21
    new-instance p1, Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;

    .line 22
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;Ljava/util/List;Ljava/util/Map;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    .line 6
    iput-object p4, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->$r8$classId:I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    .line 58
    new-instance p1, Lcom/google/android/gms/tasks/zzad;

    const/16 v0, 0x14

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    .line 59
    new-instance p1, Landroidx/room/ObservedTableVersions;

    const/16 v0, 0x18

    invoke-direct {p1, v0, p0}, Landroidx/room/ObservedTableVersions;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->$r8$classId:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {p1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    .line 11
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->$r8$classId:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iput-object p2, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    .line 16
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/Fsm;Lkotlin/reflect/jvm/internal/impl/name/Name;Lcom/motorola/camera/utility/AudioLensSwitchHelper;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->$r8$classId:I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;Lkotlin/Lazy;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->$r8$classId:I

    const-string/jumbo v0, "typeParameterResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    .line 51
    iput-object p3, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    .line 52
    new-instance p1, Lcom/google/zxing/Result;

    invoke-direct {p1, p0, p2}, Lcom/google/zxing/Result;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;)V

    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Landroidx/media3/extractor/text/pgs/PgsParser;
    .locals 3

    sget-object v0, Landroidx/media3/extractor/text/pgs/PgsParser;->instance:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-nez v0, :cond_1

    const-class v0, Landroidx/media3/extractor/text/pgs/PgsParser;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/media3/extractor/text/pgs/PgsParser;->instance:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/media3/extractor/text/pgs/PgsParser;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(I)V

    sput-object v1, Landroidx/media3/extractor/text/pgs/PgsParser;->instance:Landroidx/media3/extractor/text/pgs/PgsParser;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Landroidx/media3/extractor/text/pgs/PgsParser;->instance:Landroidx/media3/extractor/text/pgs/PgsParser;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized findAlias(Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl$1;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getAverage(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/Averages;
    .locals 5

    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/Averages;

    iget-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    if-ne v1, p1, :cond_0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/lazy/layout/Averages;

    new-instance v2, Landroidx/compose/foundation/lazy/layout/Averages;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-wide v3, v1, Landroidx/compose/foundation/lazy/layout/Averages;->compositionTimeNanos:J

    iput-wide v3, v2, Landroidx/compose/foundation/lazy/layout/Averages;->compositionTimeNanos:J

    iget-wide v3, v1, Landroidx/compose/foundation/lazy/layout/Averages;->measureTimeNanos:J

    iput-wide v3, v2, Landroidx/compose/foundation/lazy/layout/Averages;->measureTimeNanos:J

    invoke-virtual {v0, p1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    :cond_1
    check-cast v1, Landroidx/compose/foundation/lazy/layout/Averages;

    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    return-object v1
.end method

.method public getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;
    .locals 1

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-static {v0, p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    return-object p0
.end method

.method public getMetadata()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public declared-synchronized getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ":"

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getViewModel$lifecycle_viewmodel_release(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;
    .locals 4

    const-string v0, "modelClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/lifecycle/ViewModelStore;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-interface {p2, v1}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/ViewModelProvider$Factory;

    instance-of p1, p0, Landroidx/lifecycle/SavedStateViewModelFactory;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/lifecycle/SavedStateViewModelFactory;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, p0, p1}, Landroidx/lifecycle/LifecycleKt;->attachHandleIfNeeded(Landroidx/lifecycle/ViewModel;Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_0
    const-string p0, "null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.ViewModelProviderImpl.getViewModel"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    new-instance v1, Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    iget-object v2, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/viewmodel/CreationExtras;

    invoke-direct {v1, v2}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;-><init>(Landroidx/lifecycle/viewmodel/CreationExtras;)V

    sget-object v2, Landroidx/lifecycle/LifecycleKt;->VIEW_MODEL_KEY:Landroidx/transition/Transition$1;

    iget-object v3, v1, Landroidx/lifecycle/viewmodel/CreationExtras;->extras:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/ViewModelProvider$Factory;

    const-string v3, "factory"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p2, v1}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move-object v1, p2

    goto :goto_2

    :catch_0
    :try_start_2
    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_3
    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p2

    invoke-interface {v2, p2}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    goto :goto_1

    :goto_2
    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "viewModel"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/ViewModelStore;->map:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModel;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModel;->clear$lifecycle_viewmodel_release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_3
    monitor-exit v0

    return-object v1

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public isRecursion(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;)Z
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/text/pgs/PgsParser;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/pgs/PgsParser;->isRecursion(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 35

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

    iget-object v3, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v4, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/common/util/ParsableByteArray;

    add-int v5, v1, p3

    move-object/from16 v6, p1

    invoke-virtual {v4, v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast v1, Ljava/util/zip/Inflater;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    :cond_0
    iget-object v0, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast v0, Ljava/util/zip/Inflater;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/16 v5, 0xff

    if-lez v1, :cond_1

    iget-object v1, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v6, v4, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    const/16 v6, 0x78

    if-ne v1, v6, :cond_1

    invoke-static {v4, v3, v0}, Landroidx/media3/common/util/Util;->inflate(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-virtual {v4, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    :cond_1
    const/4 v0, 0x0

    iput v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeWidth:I

    iget-object v1, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->colors:[I

    iget-object v3, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    iput v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeHeight:I

    iput v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapX:I

    iput v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapY:I

    iput v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    iput v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iput-boolean v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->colorsSet:Z

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_15

    iget v6, v4, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    iget v10, v4, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v10, v9

    if-le v10, v6, :cond_2

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move v6, v0

    move-object/from16 v16, v1

    const/4 v12, 0x0

    goto/16 :goto_d

    :cond_2
    const/16 v6, 0x80

    if-eq v8, v6, :cond_c

    packed-switch v8, :pswitch_data_0

    :cond_3
    :goto_1
    move-object/from16 v16, v1

    goto/16 :goto_4

    :pswitch_0
    const/16 v6, 0x13

    if-ge v9, v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    iput v6, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeWidth:I

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    iput v6, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeHeight:I

    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    iput v6, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapX:I

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    iput v6, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapY:I

    goto :goto_1

    :pswitch_1
    const/4 v8, 0x4

    if-ge v9, v8, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_6

    const/4 v13, 0x1

    goto :goto_2

    :cond_6
    move v13, v0

    :goto_2
    add-int/lit8 v6, v9, -0x4

    if-eqz v13, :cond_9

    const/4 v7, 0x7

    if-ge v6, v7, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v6

    if-ge v6, v8, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    iput v7, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    iput v7, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    add-int/lit8 v6, v9, -0xb

    :cond_9
    iget v7, v3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v8, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-ge v7, v8, :cond_3

    if-lez v6, :cond_3

    sub-int/2addr v8, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v8, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {v4, v7, v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    add-int/2addr v7, v6

    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1

    :pswitch_2
    rem-int/lit8 v7, v9, 0x5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v4, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    div-int/lit8 v9, v9, 0x5

    move v7, v0

    :goto_3
    if-ge v7, v9, :cond_b

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v14

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v16

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v17

    move/from16 p0, v6

    move/from16 p1, v7

    int-to-double v6, v14

    add-int/lit8 v15, v15, -0x80

    int-to-double v14, v15

    const-wide v18, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v18, v18, v14

    add-double v12, v18, v6

    double-to-int v12, v12

    add-int/lit8 v13, v16, -0x80

    move-object/from16 v16, v1

    int-to-double v0, v13

    const-wide v18, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v18, v18, v0

    sub-double v18, v6, v18

    const-wide v20, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v14, v14, v20

    sub-double v13, v18, v14

    double-to-int v13, v13

    const-wide v14, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v0, v14

    add-double/2addr v0, v6

    double-to-int v0, v0

    shl-int/lit8 v1, v17, 0x18

    const/4 v6, 0x0

    invoke-static {v12, v6, v5}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v1, v7

    invoke-static {v13, v6, v5}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    invoke-static {v0, v6, v5}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v0

    or-int/2addr v0, v1

    aput v0, v16, v8

    add-int/lit8 v7, p1, 0x1

    move/from16 v6, p0

    move-object/from16 v1, v16

    const/4 v0, 0x0

    goto :goto_3

    :cond_b
    move-object/from16 v16, v1

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->colorsSet:Z

    :goto_4
    const/4 v6, 0x0

    const/4 v12, 0x0

    goto/16 :goto_c

    :cond_c
    move-object/from16 v16, v1

    iget v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeWidth:I

    if-eqz v0, :cond_13

    iget v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeHeight:I

    if-eqz v0, :cond_13

    iget v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    if-eqz v0, :cond_13

    iget v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    if-eqz v0, :cond_13

    iget v0, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-eqz v0, :cond_13

    iget v1, v3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ne v1, v0, :cond_13

    iget-boolean v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->colorsSet:Z

    if-nez v0, :cond_d

    goto/16 :goto_a

    :cond_d
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    iget v1, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    const/4 v6, 0x0

    :cond_e
    :goto_5
    if-ge v6, v0, :cond_12

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    if-eqz v7, :cond_f

    add-int/lit8 v8, v6, 0x1

    aget v7, v16, v7

    aput v7, v1, v6

    :goto_6
    move v6, v8

    goto :goto_5

    :cond_f
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    if-eqz v7, :cond_e

    and-int/lit8 v8, v7, 0x40

    if-nez v8, :cond_10

    and-int/lit8 v8, v7, 0x3f

    goto :goto_7

    :cond_10
    and-int/lit8 v8, v7, 0x3f

    shl-int/lit8 v8, v8, 0x8

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    or-int/2addr v8, v9

    :goto_7
    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_11

    const/4 v7, 0x0

    aget v9, v16, v7

    goto :goto_8

    :cond_11
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    aget v9, v16, v7

    :goto_8
    add-int/2addr v8, v6

    invoke-static {v1, v6, v8, v9}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_6

    :cond_12
    iget v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    iget v6, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v6, v7}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    iget v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapX:I

    int-to-float v0, v0

    iget v1, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeWidth:I

    int-to-float v1, v1

    div-float v25, v0, v1

    iget v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapY:I

    int-to-float v0, v0

    iget v6, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeHeight:I

    int-to-float v6, v6

    div-float v22, v0, v6

    iget v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    int-to-float v0, v0

    div-float v29, v0, v1

    iget v0, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    int-to-float v0, v0

    div-float v30, v0, v6

    new-instance v17, Landroidx/media3/common/text/Cue;

    const/16 v18, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/high16 v27, -0x80000000

    const v28, -0x800001

    const/16 v31, 0x0

    const/high16 v32, -0x1000000

    const/16 v34, 0x0

    move-object/from16 v19, v18

    move-object/from16 v20, v18

    move/from16 v33, v27

    invoke-direct/range {v17 .. v34}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    move-object/from16 v12, v17

    :goto_9
    const/4 v6, 0x0

    goto :goto_b

    :cond_13
    :goto_a
    const/4 v12, 0x0

    goto :goto_9

    :goto_b
    iput v6, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeWidth:I

    iput v6, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeHeight:I

    iput v6, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapX:I

    iput v6, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapY:I

    iput v6, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    iput v6, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iput-boolean v6, v2, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->colorsSet:Z

    :goto_c
    invoke-virtual {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_d
    if-eqz v12, :cond_14

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move v0, v6

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_15
    new-instance v6, Landroidx/media3/extractor/text/CuesWithTiming;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(JJLjava/util/List;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    new-instance v0, Lcom/adobe/internal/xmp/options/AliasOptions;

    new-instance v1, Lcom/adobe/internal/xmp/options/PropertyOptions;

    iget p5, p5, Lcom/adobe/internal/xmp/options/Options;->options:I

    invoke-direct {v1, p5}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>(I)V

    const/4 p5, 0x0

    invoke-static {v1, p5}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/internal/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object p5

    iget p5, p5, Lcom/adobe/internal/xmp/options/Options;->options:I

    invoke-direct {v0, p5}, Lcom/adobe/internal/xmp/options/Options;-><init>(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lcom/adobe/internal/xmp/options/AliasOptions;

    invoke-direct {v0}, Lcom/adobe/internal/xmp/options/Options;-><init>()V

    :goto_0
    iget-object p5, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast p5, Ljava/util/regex/Pattern;

    invoke-virtual {p5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/regex/Matcher;->find()Z

    move-result p5

    if-nez p5, :cond_5

    iget-object p5, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast p5, Ljava/util/regex/Pattern;

    invoke-virtual {p5, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/regex/Matcher;->find()Z

    move-result p5

    if-nez p5, :cond_5

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/pgs/PgsParser;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3}, Landroidx/media3/extractor/text/pgs/PgsParser;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const/16 v1, 0x65

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x4

    if-nez p2, :cond_2

    iget-object p2, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p5, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl$1;

    invoke-direct {p2, p3, p5, p4, v0}, Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    iget-object p3, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Lcom/adobe/internal/xmp/XMPException;

    const-string p2, "Actual property is already an alias, use the base property"

    invoke-direct {p1, p2, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_2
    new-instance p1, Lcom/adobe/internal/xmp/XMPException;

    const-string p2, "Alias is already existing"

    invoke-direct {p1, p2, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    new-instance p1, Lcom/adobe/internal/xmp/XMPException;

    const-string p2, "Actual namespace is not registered"

    invoke-direct {p1, p2, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_4
    new-instance p1, Lcom/adobe/internal/xmp/XMPException;

    const-string p2, "Alias namespace is not registered"

    invoke-direct {p1, p2, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    new-instance p1, Lcom/adobe/internal/xmp/XMPException;

    const-string p2, "Alias and actual property names must be simple"

    const/16 p3, 0x66

    invoke-direct {p1, p2, p3}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ":"

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/internal/xmp/impl/Utils;->isXMLNameNS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    if-eqz v3, :cond_3

    move-object v0, p2

    move v3, v2

    :goto_1
    :try_start_1
    iget-object v4, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object p2, v0

    :cond_3
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_4
    :try_start_2
    new-instance p1, Lcom/adobe/internal/xmp/XMPException;

    const-string p2, "The prefix is a bad XML name"

    const/16 v0, 0xc9

    invoke-direct {p1, p2, v0}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    new-instance p1, Lcom/adobe/internal/xmp/XMPException;

    const-string p2, "Empty prefix"

    const/4 v0, 0x4

    invoke-direct {p1, p2, v0}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public registerStandardAliases()V
    .locals 18

    new-instance v5, Lcom/adobe/internal/xmp/options/AliasOptions;

    invoke-direct {v5}, Lcom/adobe/internal/xmp/options/Options;-><init>()V

    const/16 v0, 0x600

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    new-instance v11, Lcom/adobe/internal/xmp/options/AliasOptions;

    invoke-direct {v11}, Lcom/adobe/internal/xmp/options/Options;-><init>()V

    const/16 v0, 0x1e00

    invoke-virtual {v11, v0, v1}, Lcom/adobe/internal/xmp/options/Options;->setOption(IZ)V

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    const-string v1, "http://ns.adobe.com/xap/1.0/"

    const-string v2, "Author"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "creator"

    const/16 v17, 0x0

    const-string v13, "http://ns.adobe.com/xap/1.0/"

    const-string v14, "Authors"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "description"

    const-string v13, "http://ns.adobe.com/xap/1.0/"

    const-string v14, "Description"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "format"

    const-string v13, "http://ns.adobe.com/xap/1.0/"

    const-string v14, "Format"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string/jumbo v16, "subject"

    const-string v13, "http://ns.adobe.com/xap/1.0/"

    const-string v14, "Keywords"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "language"

    const-string v13, "http://ns.adobe.com/xap/1.0/"

    const-string v14, "Locale"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string/jumbo v16, "title"

    const-string v13, "http://ns.adobe.com/xap/1.0/"

    const-string v14, "Title"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string/jumbo v16, "rights"

    const-string v13, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v14, "Copyright"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    const-string v1, "http://ns.adobe.com/pdf/1.3/"

    const-string v2, "Author"

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "BaseURL"

    const-string v13, "http://ns.adobe.com/pdf/1.3/"

    const-string v14, "BaseURL"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "CreateDate"

    const-string v13, "http://ns.adobe.com/pdf/1.3/"

    const-string v14, "CreationDate"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "CreatorTool"

    const-string v13, "http://ns.adobe.com/pdf/1.3/"

    const-string v14, "Creator"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "ModifyDate"

    const-string v13, "http://ns.adobe.com/pdf/1.3/"

    const-string v14, "ModDate"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "description"

    const-string v7, "http://ns.adobe.com/pdf/1.3/"

    const-string v8, "Subject"

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "title"

    const-string v7, "http://ns.adobe.com/pdf/1.3/"

    const-string v8, "Title"

    invoke-virtual/range {v6 .. v11}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    const-string v1, "http://ns.adobe.com/photoshop/1.0/"

    const-string v2, "Author"

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "description"

    const-string v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string v8, "Caption"

    invoke-virtual/range {v6 .. v11}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "rights"

    const-string v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string v8, "Copyright"

    invoke-virtual/range {v6 .. v11}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string/jumbo v16, "subject"

    const-string v13, "http://ns.adobe.com/photoshop/1.0/"

    const-string v14, "Keywords"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "Marked"

    const-string v13, "http://ns.adobe.com/photoshop/1.0/"

    const-string v14, "Marked"

    const-string v15, "http://ns.adobe.com/xap/1.0/rights/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "title"

    const-string v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string v8, "Title"

    invoke-virtual/range {v6 .. v11}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "WebStatement"

    const-string v13, "http://ns.adobe.com/photoshop/1.0/"

    const-string v14, "WebStatement"

    const-string v15, "http://ns.adobe.com/xap/1.0/rights/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    const-string v1, "http://ns.adobe.com/tiff/1.0/"

    const-string v2, "Artist"

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string/jumbo v16, "rights"

    const-string v13, "http://ns.adobe.com/tiff/1.0/"

    const-string v14, "Copyright"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "ModifyDate"

    const-string v13, "http://ns.adobe.com/tiff/1.0/"

    const-string v14, "DateTime"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "CreateDate"

    const-string v13, "http://ns.adobe.com/exif/1.0/"

    const-string v14, "DateTimeDigitized"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "description"

    const-string v13, "http://ns.adobe.com/tiff/1.0/"

    const-string v14, "ImageDescription"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "CreatorTool"

    const-string v13, "http://ns.adobe.com/tiff/1.0/"

    const-string v14, "Software"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    const-string v1, "http://ns.adobe.com/png/1.0/"

    const-string v2, "Author"

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "rights"

    const-string v7, "http://ns.adobe.com/png/1.0/"

    const-string v8, "Copyright"

    invoke-virtual/range {v6 .. v11}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "CreateDate"

    const-string v13, "http://ns.adobe.com/png/1.0/"

    const-string v14, "CreationTime"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "description"

    const-string v7, "http://ns.adobe.com/png/1.0/"

    const-string v8, "Description"

    invoke-virtual/range {v6 .. v11}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "ModifyDate"

    const-string v13, "http://ns.adobe.com/png/1.0/"

    const-string v14, "ModificationTime"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v16, "CreatorTool"

    const-string v13, "http://ns.adobe.com/png/1.0/"

    const-string v14, "Software"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "title"

    const-string v7, "http://ns.adobe.com/png/1.0/"

    const-string v8, "Title"

    invoke-virtual/range {v6 .. v11}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/AliasOptions;)V

    return-void
.end method

.method public registerStandardNamespaces()V
    .locals 2

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    const-string/jumbo v1, "xml"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    const-string/jumbo v1, "rdf"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://purl.org/dc/elements/1.1/"

    const-string v1, "dc"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/"

    const-string v1, "Iptc4xmpCore"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://iptc.org/std/Iptc4xmpExt/2008-02-29/"

    const-string v1, "Iptc4xmpExt"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/DICOM/"

    const-string v1, "DICOM"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.useplus.org/ldf/xmp/1.0/"

    const-string/jumbo v1, "plus"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "adobe:ns:meta/"

    const-string/jumbo v1, "x"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/iX/1.0/"

    const-string v1, "iX"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v1, "xmp"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/rights/"

    const-string/jumbo v1, "xmpRights"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v1, "xmpMM"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/bj/"

    const-string/jumbo v1, "xmpBJ"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/note/"

    const-string/jumbo v1, "xmpNote"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/pdf/1.3/"

    const-string/jumbo v1, "pdf"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/pdfx/1.3/"

    const-string/jumbo v1, "pdfx"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.npes.org/pdfx/ns/id/"

    const-string/jumbo v1, "pdfxid"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/schema#"

    const-string/jumbo v1, "pdfaSchema"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/property#"

    const-string/jumbo v1, "pdfaProperty"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/type#"

    const-string/jumbo v1, "pdfaType"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/field#"

    const-string/jumbo v1, "pdfaField"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/id/"

    const-string/jumbo v1, "pdfaid"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/extension/"

    const-string/jumbo v1, "pdfaExtension"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/photoshop/1.0/"

    const-string/jumbo v1, "photoshop"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/album/1.0/"

    const-string v1, "album"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/exif/1.0/"

    const-string v1, "exif"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://cipa.jp/exif/1.0/"

    const-string v1, "exifEX"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/exif/1.0/aux/"

    const-string v1, "aux"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/tiff/1.0/"

    const-string/jumbo v1, "tiff"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/png/1.0/"

    const-string/jumbo v1, "png"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/jpeg/1.0/"

    const-string v1, "jpeg"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/jp2k/1.0/"

    const-string v1, "jp2k"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/camera-raw-settings/1.0/"

    const-string v1, "crs"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/StockPhoto/1.0/"

    const-string v1, "bmsp"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/creatorAtom/1.0/"

    const-string v1, "creatorAtom"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/asf/1.0/"

    const-string v1, "asf"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/wav/1.0/"

    const-string/jumbo v1, "wav"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/bwf/bext/1.0/"

    const-string v1, "bext"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/riff/info/"

    const-string/jumbo v1, "riffinfo"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/1.0/Script/"

    const-string/jumbo v1, "xmpScript"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/TransformXMP/"

    const-string/jumbo v1, "txmp"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/swf/1.0/"

    const-string/jumbo v1, "swf"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/ccv/1.0/"

    const-string v1, "ccv"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    const-string/jumbo v1, "xmpDM"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/transient/1.0/"

    const-string/jumbo v1, "xmpx"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/t/"

    const-string/jumbo v1, "xmpT"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/t/pg/"

    const-string/jumbo v1, "xmpTPg"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/g/"

    const-string/jumbo v1, "xmpG"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/g/img/"

    const-string/jumbo v1, "xmpGImg"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Font#"

    const-string/jumbo v1, "stFnt"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Dimensions#"

    const-string/jumbo v1, "stDim"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v1, "stEvt"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v1, "stRef"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Version#"

    const-string/jumbo v1, "stVer"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Job#"

    const-string/jumbo v1, "stJob"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ManifestItem#"

    const-string/jumbo v1, "stMfs"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/Identifier/qual/1.0/"

    const-string/jumbo v1, "xmpidq"

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoSession{Session video size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Current Capture Video Data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Next capture video Data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public updatePageAccessibilityActions()V
    .locals 9

    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v0, Landroidx/room/ObservedTableVersions;

    iget-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/zzad;

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    const v2, 0x1020048

    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->removeActionWithId(Landroid/view/View;I)V

    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    const v4, 0x1020049

    invoke-static {p0, v4}, Landroidx/core/view/ViewCompat;->removeActionWithId(Landroid/view/View;I)V

    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    const v5, 0x1020046

    invoke-static {p0, v5}, Landroidx/core/view/ViewCompat;->removeActionWithId(Landroid/view/View;I)V

    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    const v6, 0x1020047

    invoke-static {p0, v6}, Landroidx/core/view/ViewCompat;->removeActionWithId(Landroid/view/View;I)V

    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v7, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_6

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_3

    move v6, v2

    goto :goto_0

    :cond_3
    move v6, v4

    :goto_0
    if-eqz v5, :cond_4

    move v2, v4

    :cond_4
    iget v4, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_5

    new-instance v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v3, v6, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v3, v1}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    :cond_5
    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-lez v1, :cond_8

    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v1, v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v1, v0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    return-void

    :cond_6
    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_7

    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v2, v6, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v2, v1}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    :cond_7
    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-lez v1, :cond_8

    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v1, v5, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v1, v0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public visit(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/Fsm;

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-static {v1, p0, p1}, Lcom/motorola/camera/fsm/Fsm;->access$createConstant(Lcom/motorola/camera/fsm/Fsm;Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/Fsm;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    invoke-virtual {v1, p1, v2, v0}, Lcom/motorola/camera/fsm/Fsm;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Ljava/util/List;)Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    move-result-object p1

    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1, p1, p0, v0}, Landroidx/transition/TransitionValuesMaps;-><init>(Lcom/motorola/camera/utility/AudioLensSwitchHelper;Landroidx/media3/extractor/text/pgs/PgsParser;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;

    invoke-direct {v1, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitEnd()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    iget-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "elements"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {v1, v2}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAnnotationParameterByName(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->compact(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    const-string v3, "getType(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/TypedArrayValue;

    invoke-direct {v3, p0, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/TypedArrayValue;-><init>(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/Fsm;

    iget-object v3, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/Object;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/Fsm;->isImplicitRepeatableContainer(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/AnnotationValue;

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p0, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/AnnotationValue;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public visitEnum(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/EnumValue;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/EnumValue;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
