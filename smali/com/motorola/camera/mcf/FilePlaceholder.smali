.class public final Lcom/motorola/camera/mcf/FilePlaceholder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;,
        Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0002\u001c\u001dB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JP\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000eH\u0002JP\u0010\u0015\u001a\u00020\u00162\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000eH\u0007JP\u0010\u0017\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000eH\u0007J\u0018\u0010\u0019\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u000eH\u0007J\u0018\u0010\u001a\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u000eH\u0007R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/motorola/camera/mcf/FilePlaceholder;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "requestFileUriPair",
        "Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;",
        "context",
        "Landroid/content/Context;",
        "fileNamePrefix",
        "mime",
        "timeExpireMs",
        "",
        "size",
        "",
        "width",
        "height",
        "stride",
        "tag",
        "requestFilePlaceholder",
        "Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;",
        "requestFilePlaceholder2",
        "Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;",
        "deleteTagData",
        "deleteData",
        "id",
        "FilePlaceholderData",
        "FilePlaceholderData2",
        "MotCamera-MCF_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/mcf/FilePlaceholder;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/mcf/FilePlaceholder;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/FilePlaceholder;-><init>()V

    sput-object v0, Lcom/motorola/camera/mcf/FilePlaceholder;->INSTANCE:Lcom/motorola/camera/mcf/FilePlaceholder;

    const-string v0, "FilePlaceholder"

    sput-object v0, Lcom/motorola/camera/mcf/FilePlaceholder;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final deleteData(Landroid/content/Context;J)I
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/background/provider/FileDataContract;->deleteData(Landroid/content/Context;J)I

    move-result p0

    return p0
.end method

.method public static final deleteTagData(Landroid/content/Context;J)I
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/background/provider/FileDataContract;->deleteTagData(Landroid/content/Context;J)I

    move-result p0

    return p0
.end method

.method public static final requestFilePlaceholder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIIIIJ)Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;
    .locals 13

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileNamePrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/mcf/FilePlaceholder;->INSTANCE:Lcom/motorola/camera/mcf/FilePlaceholder;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Lcom/motorola/camera/mcf/FilePlaceholder;->requestFileUriPair(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIIIIJ)Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/mcf/FilePlaceholder;->TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;->uriFileDB:Landroid/net/Uri;

    iget-object v0, p0, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;->uriFile:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestFilePlaceholder: idUriPair = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " fileUri = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " filePath = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;->uriFileDB:Landroid/net/Uri;

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    goto :goto_1

    :cond_1
    const-wide/16 p0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, v1

    :goto_2
    if-eqz p2, :cond_3

    const-string v0, "/private_cache_root"

    invoke-static {p2, v0}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance p2, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;

    invoke-direct {p2, p0, p1, v1}, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;-><init>(JLjava/lang/String;)V

    return-object p2
.end method

.method public static final requestFilePlaceholder2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIIIIJ)Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;
    .locals 13

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileNamePrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/mcf/FilePlaceholder;->INSTANCE:Lcom/motorola/camera/mcf/FilePlaceholder;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Lcom/motorola/camera/mcf/FilePlaceholder;->requestFileUriPair(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIIIIJ)Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/mcf/FilePlaceholder;->TAG:Ljava/lang/String;

    iget-object v0, p1, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;->uriFileDB:Landroid/net/Uri;

    iget-object v1, p1, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;->uriFile:Landroid/net/Uri;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "requestFilePlaceholder: idUriPair = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " fileUri = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " filePath = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;->uriFileDB:Landroid/net/Uri;

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    goto :goto_1

    :cond_1
    const-wide/16 v3, -0x1

    :goto_1
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "w"

    invoke-virtual {p0, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    move-object p1, v2

    :goto_2
    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "fd is "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", expect problems"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;

    invoke-direct {p0, v3, v4, p1}, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;-><init>(JLjava/lang/Integer;)V

    return-object p0
.end method

.method private final requestFileUriPair(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIIIIJ)Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;
    .locals 21

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    sget-object v3, Lcom/motorola/camera/background/common/IOMIMEType;->UNDEFINED:Lcom/motorola/camera/background/common/IOMIMEType;

    sget-object v4, Lcom/motorola/camera/background/common/IOFormat;->BIN:Lcom/motorola/camera/background/common/IOFormat;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "makernote"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v3, Lcom/motorola/camera/background/common/IOMIMEType;->MAKERNOTE_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    :goto_0
    move-object v8, v3

    move-object v9, v4

    goto/16 :goto_2

    :sswitch_1
    const-string/jumbo v5, "thumb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :sswitch_2
    const-string v5, "nv21"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/motorola/camera/background/common/IOFormat;->NV21:Lcom/motorola/camera/background/common/IOFormat;

    sget-object v3, Lcom/motorola/camera/background/common/IOMIMEType;->RAW_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_0

    :sswitch_3
    const-string v5, "nv12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/motorola/camera/background/common/IOFormat;->NV12:Lcom/motorola/camera/background/common/IOFormat;

    sget-object v3, Lcom/motorola/camera/background/common/IOMIMEType;->RAW_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_0

    :sswitch_4
    const-string v5, "json"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/motorola/camera/background/common/IOFormat;->JSON:Lcom/motorola/camera/background/common/IOFormat;

    sget-object v3, Lcom/motorola/camera/background/common/IOMIMEType;->JSON_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_0

    :sswitch_5
    const-string v5, "jpeg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/motorola/camera/background/common/IOFormat;->JPEG:Lcom/motorola/camera/background/common/IOFormat;

    sget-object v3, Lcom/motorola/camera/background/common/IOMIMEType;->JPEG_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_0

    :sswitch_6
    const-string v5, "exif"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/motorola/camera/background/common/IOMIMEType;->EXIF_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_0

    :sswitch_7
    const-string v5, "app6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    sget-object v3, Lcom/motorola/camera/background/common/IOMIMEType;->APP6_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_0

    :sswitch_8
    const-string/jumbo v5, "raw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :goto_1
    sget-object v5, Lcom/motorola/camera/mcf/FilePlaceholder;->TAG:Ljava/lang/String;

    const-string v6, "Unknown mime type: "

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    sget-object v4, Lcom/motorola/camera/background/common/IOFormat;->RAW:Lcom/motorola/camera/background/common/IOFormat;

    sget-object v3, Lcom/motorola/camera/background/common/IOMIMEType;->RAW_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_0

    :goto_2
    sget-object v2, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    sget-object v14, Lcom/motorola/camera/background/common/IOCompression;->NONE:Lcom/motorola/camera/background/common/IOCompression;

    sget-object v15, Lcom/motorola/camera/background/common/IOEncryption;->NONE:Lcom/motorola/camera/background/common/IOEncryption;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fileNamePrefix"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const-string/jumbo v3, "randomUUID(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "randomUUID"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "-"

    invoke-static {v2, v5, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide/from16 v4, p10

    invoke-static {v8, v9, v0, v4, v5}, Lcom/motorola/camera/background/provider/FileDataContract;->createBaseFileName(Lcom/motorola/camera/background/common/IOMIMEType;Lcom/motorola/camera/background/common/IOFormat;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    const-string v0, "fileName"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->getBasePathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->createBaseDir(Landroid/content/Context;)V

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v0

    const/16 v20, 0x0

    if-eqz v0, :cond_8

    const-string v0, "com.motorola.camera5.background.provider.filedatacontract.FileProviderCustom"

    invoke-static {v1, v0, v7}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    move-object v7, v0

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "requestNewContentUri: Not able to create file: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, v20

    :goto_3
    if-eqz v7, :cond_9

    move-wide/from16 v12, p4

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    invoke-static/range {v1 .. v19}, Lcom/motorola/camera/background/provider/FileDataContract;->insertFileDatabase(Landroid/content/Context;JJLjava/lang/String;Landroid/net/Uri;Lcom/motorola/camera/background/common/IOMIMEType;Lcom/motorola/camera/background/common/IOFormat;JJLcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;IIII)Landroid/net/Uri;

    move-result-object v20

    :cond_9
    move-object/from16 v0, v20

    new-instance v1, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;

    invoke-direct {v1, v0, v7}, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1b828 -> :sswitch_8
        0x2dca35 -> :sswitch_7
        0x2fb910 -> :sswitch_6
        0x31e068 -> :sswitch_5
        0x31ece8 -> :sswitch_4
        0x33c1e9 -> :sswitch_3
        0x33c207 -> :sswitch_2
        0x693b1d6 -> :sswitch_1
        0x4c83a636 -> :sswitch_0
    .end sparse-switch
.end method
