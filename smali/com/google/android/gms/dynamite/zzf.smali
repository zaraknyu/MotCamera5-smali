.class public final Lcom/google/android/gms/dynamite/zzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;
.implements Landroidx/media3/extractor/ExtractorOutput;
.implements Landroidx/media3/extractor/text/SubtitleParser$Factory;
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static volatile INSTANCE:Lcom/google/android/gms/dynamite/zzf;

.field public static zza:Lcom/google/android/gms/dynamite/zzf;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Landroidx/collection/LruCache;

    const/16 p1, 0x10

    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    sget-object p0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    new-instance p0, Landroidx/collection/MutableScatterMap;

    invoke-direct {p0}, Landroidx/collection/MutableScatterMap;-><init>()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static final access$visibleAllowed()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontFacing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentCliCamera()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELFIE_ANIMATION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static createCodec(Lcom/motorola/camera/fsm/Fsm;)Landroid/media/MediaCodec;
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createCodec:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0
.end method

.method public static findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;
    .locals 5

    new-instance v0, Landroid/graphics/fonts/FontStyle;

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x2bc

    goto :goto_0

    :cond_0
    const/16 v1, 0x190

    :goto_0
    and-int/lit8 p1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    invoke-direct {v0, v1, p1}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/zzf;->getMatchScore(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I

    move-result v1

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result v2

    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v3}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/dynamite/zzf;->getMatchScore(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I

    move-result v4

    if-ge v4, v1, :cond_2

    move-object p1, v2

    move v1, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method public static getFontFamily([Landroidx/core/provider/FontsContractCompat$FontInfo;Landroid/content/ContentResolver;)Landroid/graphics/fonts/FontFamily;
    .locals 8

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v4, p0, v2

    :try_start_0
    iget-object v5, v4, Landroidx/core/provider/FontsContractCompat$FontInfo;->mUri:Landroid/net/Uri;

    const-string/jumbo v6, "r"

    invoke-virtual {p1, v5, v6, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    if-nez v5, :cond_0

    if-eqz v5, :cond_2

    :goto_1
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v4

    goto :goto_4

    :cond_0
    :try_start_1
    new-instance v6, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v6, v5}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget v7, v4, Landroidx/core/provider/FontsContractCompat$FontInfo;->mWeight:I

    invoke-virtual {v6, v7}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    iget-boolean v7, v4, Landroidx/core/provider/FontsContractCompat$FontInfo;->mItalic:Z

    invoke-virtual {v6, v7}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    iget v4, v4, Landroidx/core/provider/FontsContractCompat$FontInfo;->mTtcIndex:I

    invoke-virtual {v6, v4}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v4

    if-nez v3, :cond_1

    new-instance v6, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v6, v4}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v3, v6

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v4}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    :try_start_2
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    const-string v5, "TypefaceCompatApi29Impl"

    const-string v6, "Font load failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object p0

    return-object p0
.end method

.method public static getMatchScore(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public static getSingleSelected(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;
    .locals 6

    const-string v0, "keyTarget"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget v5, v3, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->key:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public create(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleParser;
    .locals 13

    .line 19
    iget-object p0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    if-eqz p0, :cond_c

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v0, v4

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "application/ttml+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "application/x-subrip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "application/vobsub"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "text/x-ssa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "application/x-quicktime-tx3g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "text/vtt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "application/x-mp4-vtt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :sswitch_7
    const-string v0, "application/pgs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_1

    :sswitch_8
    const-string v0, "application/dvbsubs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 21
    :pswitch_0
    new-instance p0, Landroidx/media3/extractor/text/ttml/TtmlParser;

    invoke-direct {p0}, Landroidx/media3/extractor/text/ttml/TtmlParser;-><init>()V

    return-object p0

    .line 22
    :pswitch_1
    new-instance p0, Landroidx/media3/extractor/text/subrip/SubripParser;

    invoke-direct {p0}, Landroidx/media3/extractor/text/subrip/SubripParser;-><init>()V

    return-object p0

    .line 23
    :pswitch_2
    new-instance p0, Landroidx/work/WorkQuery;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    .line 26
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    .line 27
    new-instance v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

    invoke-direct {v0}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;-><init>()V

    iput-object v0, p0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    .line 28
    new-instance v6, Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, p1, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 29
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget v6, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 30
    const-string v6, "\\r?\\n"

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 31
    array-length v6, p1

    move v7, v5

    :goto_2
    if-ge v7, v6, :cond_b

    aget-object v8, p1, v7

    .line 32
    const-string/jumbo v9, "palette: "

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x9

    .line 33
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    .line 34
    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 35
    array-length v9, v8

    new-array v9, v9, [I

    iput-object v9, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    move v9, v5

    .line 36
    :goto_3
    array-length v10, v8

    if-ge v9, v10, :cond_a

    .line 37
    iget-object v10, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    aget-object v11, v8, v9

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x10

    .line 38
    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move v11, v5

    .line 39
    :goto_4
    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 40
    :cond_9
    const-string/jumbo v9, "size: "

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 41
    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "x"

    .line 42
    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 43
    array-length v9, v8

    if-ne v9, v2, :cond_a

    .line 44
    :try_start_1
    aget-object v9, v8, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeWidth:I

    .line 45
    aget-object v8, v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeHeight:I

    .line 46
    iput-boolean v3, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasPlane:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v8

    .line 47
    const-string v9, "VobsubParser"

    const-string v10, "Parsing IDX failed"

    invoke-static {v9, v10, v8}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    return-object p0

    .line 48
    :pswitch_3
    new-instance p0, Landroidx/media3/extractor/text/ssa/SsaParser;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/ssa/SsaParser;-><init>(Ljava/util/List;)V

    return-object p0

    .line 49
    :pswitch_4
    new-instance p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/tx3g/Tx3gParser;-><init>(Ljava/util/List;)V

    return-object p0

    .line 50
    :pswitch_5
    new-instance p0, Landroidx/room/concurrent/FileLock;

    const/16 p1, 0xc

    invoke-direct {p0, p1}, Landroidx/room/concurrent/FileLock;-><init>(I)V

    return-object p0

    .line 51
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/tasks/zza;

    const/16 p1, 0x12

    invoke-direct {p0, p1}, Lcom/google/android/gms/tasks/zza;-><init>(I)V

    return-object p0

    .line 52
    :pswitch_7
    new-instance p0, Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-direct {p0, v5}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(I)V

    return-object p0

    .line 53
    :pswitch_8
    new-instance p0, Landroidx/media3/extractor/text/dvb/DvbParser;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/dvb/DvbParser;-><init>(Ljava/util/List;)V

    return-object p0

    .line 54
    :cond_c
    :goto_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported MIME type: "

    .line 55
    invoke-static {v0, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_8
        -0x4a6813e3 -> :sswitch_7
        -0x3d28a9ba -> :sswitch_6
        -0x3be2f26c -> :sswitch_5
        0x2935f49f -> :sswitch_4
        0x310bebca -> :sswitch_3
        0x45059676 -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 4

    .line 1
    const-class p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    new-instance v0, Lcom/google/mlkit/common/internal/zzb;

    invoke-virtual {p1, p0}, Lcom/google/firebase/components/RestrictedComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    .line 2
    const-class p0, Landroidx/compose/foundation/lazy/LazyDslKt;

    monitor-enter p0

    const/4 p1, 0x1

    int-to-byte p1, p1

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 3
    :try_start_0
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzru;

    .line 4
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 5
    const-class v1, Landroidx/compose/foundation/lazy/LazyDslKt;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    sget-object v2, Landroidx/compose/foundation/lazy/LazyDslKt;->zza:Lcom/google/android/gms/internal/mlkit_common/zzsr;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzsr;

    const/4 v3, 0x0

    .line 7
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/mlkit_common/zzsr;-><init>(I)V

    .line 8
    sput-object v2, Landroidx/compose/foundation/lazy/LazyDslKt;->zza:Lcom/google/android/gms/internal/mlkit_common/zzsr;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v2, Landroidx/compose/foundation/lazy/LazyDslKt;->zza:Lcom/google/android/gms/internal/mlkit_common/zzsr;

    .line 9
    invoke-virtual {v2, p1}, Landroidx/media3/common/BasePlayer;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzsh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    monitor-exit p0

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    .line 12
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_2

    .line 14
    const-string v1, " enableFirelog"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    const-string p1, " firelogEventType"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_2
.end method

.method public createAdapter(Lcom/motorola/camera/fsm/Fsm;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .locals 4

    const/4 p0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamite/zzf;->createCodec(Lcom/motorola/camera/fsm/Fsm;)Landroid/media/MediaCodec;

    move-result-object p0

    const-string v0, "configureCodec"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->detachedSurfaceSupported:Z

    if-eqz v1, :cond_0

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaFormat;

    iget-object v3, p1, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast v3, Landroid/media/MediaCrypto;

    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string/jumbo v0, "startCodec"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object p1, p1, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    check-cast p1, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v0, p0, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Landroid/media/MediaCodec;Landroidx/core/view/MenuHostHelper;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    :cond_1
    throw p1
.end method

.method public createFromFontInfoWithFallback(Landroid/content/Context;Ljava/util/List;I)Landroid/graphics/Typeface;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    invoke-static {p1, p0}, Lcom/google/android/gms/dynamite/zzf;->getFontFamily([Landroidx/core/provider/FontsContractCompat$FontInfo;Landroid/content/ContentResolver;)Landroid/graphics/fonts/FontFamily;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v1, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    invoke-static {v3, p0}, Lcom/google/android/gms/dynamite/zzf;->getFontFamily([Landroidx/core/provider/FontsContractCompat$FontInfo;Landroid/content/ContentResolver;)Landroid/graphics/fonts/FontFamily;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;->addCustomFallback(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, p3}, Lcom/google/android/gms/dynamite/zzf;->findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_2
    const-string p1, "TypefaceCompatApi29Impl"

    const-string p2, "Font load failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public endTracks()V
    .locals 0

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 14

    new-instance p0, Lcom/google/mlkit/common/internal/zzc;

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/google/mlkit/common/internal/zzc;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const-string v7, "Null flags"

    if-eqz v6, :cond_4

    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;

    const-wide/16 v2, 0x7530

    const-wide/32 v4, 0x5265c00

    invoke-direct/range {v1 .. v6}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;-><init>(JJLjava/util/Set;)V

    sget-object v2, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_3

    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;

    const-wide/16 v2, 0x3e8

    const-wide/32 v4, 0x5265c00

    invoke-direct/range {v1 .. v6}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;-><init>(JJLjava/util/Set;)V

    sget-object v2, Lcom/google/android/datatransport/Priority;->HIGHEST:Lcom/google/android/datatransport/Priority;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_2

    sget-object v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->NETWORK_UNMETERED:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    sget-object v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->DEVICE_IDLE:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    filled-new-array {v1, v2}, [Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v13

    if-eqz v13, :cond_1

    new-instance v8, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;

    const-wide/32 v9, 0x5265c00

    const-wide/32 v11, 0x5265c00

    invoke-direct/range {v8 .. v13}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;-><init>(JJLjava/util/Set;)V

    sget-object v1, Lcom/google/android/datatransport/Priority;->VERY_LOW:Lcom/google/android/datatransport/Priority;

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {}, Lcom/google/android/datatransport/Priority;->values()[Lcom/google/android/datatransport/Priority;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig;

    invoke-direct {v1, p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig;-><init>(Lcom/google/android/datatransport/runtime/time/Clock;Ljava/util/HashMap;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not all priorities have been configured"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCueReplacementBehavior(Landroidx/media3/common/Format;)I
    .locals 3

    iget-object p0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "application/ttml+xml"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string p1, "application/x-subrip"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string p1, "application/vobsub"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string/jumbo p1, "text/x-ssa"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string p1, "application/x-quicktime-tx3g"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo p1, "text/vtt"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string p1, "application/x-mp4-vtt"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_0

    :sswitch_7
    const-string p1, "application/pgs"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v2, v0

    goto :goto_0

    :sswitch_8
    const-string p1, "application/dvbsubs"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v0

    :pswitch_1
    return v1

    :pswitch_2
    return v0

    :pswitch_3
    return v1

    :pswitch_4
    return v0

    :pswitch_5
    return v1

    :cond_9
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported MIME type: "

    invoke-static {v0, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_8
        -0x4a6813e3 -> :sswitch_7
        -0x3d28a9ba -> :sswitch_6
        -0x3be2f26c -> :sswitch_5
        0x2935f49f -> :sswitch_4
        0x310bebca -> :sswitch_3
        0x45059676 -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    return-void
.end method

.method public selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/motorola/camera/utility/Error;
    .locals 2

    new-instance p0, Lcom/motorola/camera/utility/Error;

    invoke-direct {p0}, Lcom/motorola/camera/utility/Error;-><init>()V

    const/4 v0, 0x1

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    return-object p0

    :cond_0
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;->zza(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    :cond_1
    return-object p0
.end method

.method public setMaxElevation(Lcom/motorola/camera/CameraKpi;F)V
    .locals 4

    iget-object p0, p1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroidx/cardview/widget/RoundRectDrawable;

    iget-object v0, p1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v1

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v2

    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    cmpl-float v3, p2, v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    if-ne v3, v1, :cond_0

    iget-boolean v3, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    iput-boolean v1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    iput-boolean v2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/cardview/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Lcom/motorola/camera/CameraKpi;->setShadowPadding(IIII)V

    return-void

    :cond_1
    iget-object p0, p1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroidx/cardview/widget/RoundRectDrawable;

    iget p2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    iget p0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v1

    invoke-static {p2, p0, v1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v0

    invoke-static {p2, p0, v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result p0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-virtual {p1, v1, p0, v1, p0}, Lcom/motorola/camera/CameraKpi;->setShadowPadding(IIII)V

    return-void
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)Z
    .locals 0

    iget-object p0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo p1, "text/x-ssa"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "text/vtt"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/x-mp4-vtt"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/x-subrip"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/x-quicktime-tx3g"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/pgs"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/vobsub"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/dvbsubs"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/ttml+xml"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 0

    new-instance p0, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {p0}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    return-object p0
.end method
