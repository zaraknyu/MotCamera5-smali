.class public final Lcom/google/zxing/qrcode/decoder/Version;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;


# instance fields
.field public final ecBlocks:[Landroidx/media3/extractor/mkv/Sniffer;

.field public final totalCodewords:I

.field public final versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 60

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v0, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v3, 0x1

    const/16 v4, 0x13

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v2}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v2

    const/4 v5, 0x7

    invoke-direct {v0, v5, v2}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x10

    invoke-direct {v6, v3, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v6

    const/16 v8, 0xa

    invoke-direct {v2, v8, v6}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v6, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0xd

    invoke-direct {v9, v3, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v9}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v9

    invoke-direct {v6, v10, v9}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x9

    invoke-direct {v11, v3, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v11}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v11

    const/16 v13, 0x11

    invoke-direct {v9, v13, v11}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v0, v2, v6, v9}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v0, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x22

    invoke-direct {v6, v3, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v6

    invoke-direct {v0, v8, v6}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v6, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x1c

    invoke-direct {v11, v3, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v11}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v11

    invoke-direct {v6, v7, v11}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v11, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x16

    invoke-direct {v15, v3, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v15}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v15

    invoke-direct {v11, v9, v15}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v15, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v8, v3, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v8}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v8

    invoke-direct {v15, v14, v8}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v0, v6, v11, v15}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/4 v6, 0x2

    invoke-direct {v2, v6, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v8, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x37

    invoke-direct {v11, v3, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v11}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v11

    const/16 v15, 0xf

    invoke-direct {v8, v15, v11}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v11, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x2c

    invoke-direct {v5, v3, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v14, 0x1a

    invoke-direct {v11, v14, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v4, v6, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v13, 0x12

    invoke-direct {v5, v13, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v15, v6, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v15}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v15

    invoke-direct {v4, v9, v15}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v8, v11, v5, v4}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v0, v5, v4}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v8, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x50

    invoke-direct {v11, v3, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v11}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v11

    const/16 v15, 0x14

    invoke-direct {v8, v15, v11}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v11, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x20

    invoke-direct {v5, v6, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    invoke-direct {v11, v13, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x18

    invoke-direct {v10, v6, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v10}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v10

    invoke-direct {v5, v14, v10}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v10, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v13, 0x4

    invoke-direct {v9, v13, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v9}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v9

    invoke-direct {v10, v7, v9}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v8, v11, v5, v10}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v5

    invoke-direct {v4, v13, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v8, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x6c

    invoke-direct {v9, v3, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v9}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v9

    invoke-direct {v8, v14, v9}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x2b

    invoke-direct {v11, v6, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v11}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v11

    invoke-direct {v9, v15, v11}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v11, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    invoke-direct {v10, v6, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v12, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v10, v12}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v10

    const/16 v12, 0x12

    invoke-direct {v11, v12, v10}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v10, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xb

    invoke-direct {v12, v6, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v3, 0xc

    invoke-direct {v14, v6, v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v12, v14}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v12

    const/16 v14, 0x16

    invoke-direct {v10, v14, v12}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v8, v9, v11, v10}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v8

    const/4 v9, 0x5

    invoke-direct {v5, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v10, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x44

    invoke-direct {v11, v6, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v11}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v11

    const/16 v14, 0x12

    invoke-direct {v10, v14, v11}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v11, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x1b

    invoke-direct {v14, v13, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v14}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v14

    invoke-direct {v11, v7, v14}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v14, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    invoke-direct {v9, v13, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v9}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v9

    invoke-direct {v14, v15, v9}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v3, 0xf

    invoke-direct {v12, v13, v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v12}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    const/16 v12, 0x1c

    invoke-direct {v9, v12, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v10, v11, v14, v9}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v3

    const/4 v9, 0x6

    invoke-direct {v8, v9, v3}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v10, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x4e

    invoke-direct {v11, v6, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v11}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v11

    const/16 v12, 0x14

    invoke-direct {v10, v12, v11}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v11, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x1f

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v12}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v12

    const/16 v14, 0x12

    invoke-direct {v11, v14, v12}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v12, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0xe

    invoke-direct {v9, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xf

    invoke-direct {v15, v13, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v9, v15}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v6

    invoke-direct {v12, v14, v6}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v6, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xd

    invoke-direct {v9, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v15, 0x1

    invoke-direct {v14, v15, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v9, v14}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v9

    const/16 v14, 0x1a

    invoke-direct {v6, v14, v9}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v10, v11, v12, v6}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v6

    const/4 v9, 0x7

    invoke-direct {v3, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    move-object v6, v8

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v9, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x61

    const/4 v12, 0x2

    invoke-direct {v10, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v10}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v10

    const/16 v11, 0x18

    invoke-direct {v9, v11, v10}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v10, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x26

    invoke-direct {v11, v12, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x27

    invoke-direct {v15, v12, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v11, v15}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v11

    const/16 v15, 0x16

    invoke-direct {v10, v15, v11}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v11, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x12

    invoke-direct {v14, v13, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x13

    invoke-direct {v7, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v14, v7}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v7

    invoke-direct {v11, v15, v7}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v14, 0x4

    const/16 v15, 0xe

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0xf

    invoke-direct {v14, v12, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v13, v14}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v13

    const/16 v14, 0x1a

    invoke-direct {v7, v14, v13}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v9, v10, v11, v7}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v7

    const/16 v9, 0x8

    invoke-direct {v8, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v10, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v11}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v11

    const/16 v14, 0x1e

    invoke-direct {v10, v14, v11}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v11, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x24

    const/4 v9, 0x3

    invoke-direct {v15, v9, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x25

    invoke-direct {v9, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v15, v9}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v9

    const/16 v15, 0x16

    invoke-direct {v11, v15, v9}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v13, 0x4

    const/16 v15, 0x10

    invoke-direct {v12, v13, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v12, v15}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v12

    const/16 v14, 0x14

    invoke-direct {v9, v14, v12}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v12, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0xc

    invoke-direct {v14, v13, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v41, v0

    const/16 v0, 0xd

    invoke-direct {v15, v13, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v14, v15}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v0

    const/16 v13, 0x18

    invoke-direct {v12, v13, v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v10, v11, v9, v12}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v9, 0x9

    invoke-direct {v7, v9, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v0, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x44

    const/4 v12, 0x2

    invoke-direct {v9, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x45

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v9, v11}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v9

    const/16 v14, 0x12

    invoke-direct {v0, v14, v9}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2b

    const/4 v13, 0x4

    invoke-direct {v11, v13, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x2c

    const/4 v15, 0x1

    invoke-direct {v12, v15, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v11, v12}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v11

    const/16 v14, 0x1a

    invoke-direct {v9, v14, v11}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v11, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x13

    const/4 v14, 0x6

    invoke-direct {v12, v14, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x14

    const/4 v15, 0x2

    invoke-direct {v13, v15, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v12, v13}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v12

    const/16 v13, 0x18

    invoke-direct {v11, v13, v12}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v12, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v14, 0x6

    const/16 v15, 0xf

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v38, v1

    const/4 v1, 0x2

    const/16 v15, 0x10

    invoke-direct {v14, v1, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v13, v14}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    const/16 v13, 0x1c

    invoke-direct {v12, v13, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v0, v9, v11, v12}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {v10, v1, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v0, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x51

    const/4 v13, 0x4

    invoke-direct {v1, v13, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v1}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    const/16 v14, 0x14

    invoke-direct {v0, v14, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v1, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x32

    const/4 v15, 0x1

    invoke-direct {v9, v15, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x33

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v9, v12}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v9

    const/16 v12, 0x1e

    invoke-direct {v1, v12, v9}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x16

    invoke-direct {v12, v13, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x17

    invoke-direct {v14, v13, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v12, v14}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v12

    const/16 v13, 0x1c

    invoke-direct {v9, v13, v12}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v12, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v14, 0x3

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v42, v2

    const/16 v2, 0x8

    const/16 v15, 0xd

    invoke-direct {v14, v2, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v13, v14}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v2

    const/16 v13, 0x18

    invoke-direct {v12, v13, v2}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v0, v1, v9, v12}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {v11, v1, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v0, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v2, 0x5c

    const/4 v15, 0x2

    invoke-direct {v1, v15, v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x5d

    invoke-direct {v2, v15, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v1, v2}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    const/16 v13, 0x18

    invoke-direct {v0, v13, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v1, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x24

    const/4 v14, 0x6

    invoke-direct {v2, v14, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x25

    invoke-direct {v9, v15, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v2, v9}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v2

    const/16 v15, 0x16

    invoke-direct {v1, v15, v2}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v13, 0x4

    const/16 v15, 0x14

    invoke-direct {v9, v13, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x15

    invoke-direct {v15, v14, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v9, v15}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v9

    const/16 v14, 0x1a

    invoke-direct {v2, v14, v9}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xe

    const/4 v15, 0x7

    invoke-direct {v14, v15, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v43, v3

    const/4 v3, 0x4

    const/16 v15, 0xf

    invoke-direct {v13, v3, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v14, v13}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v13

    const/16 v14, 0x1c

    invoke-direct {v9, v14, v13}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v0, v1, v2, v9}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v15, 0xc

    invoke-direct {v12, v15, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v0, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v2, 0x6b

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v1}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    const/16 v14, 0x1a

    invoke-direct {v0, v14, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v1, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x8

    const/16 v14, 0x25

    invoke-direct {v3, v9, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v2, 0x26

    const/4 v15, 0x1

    invoke-direct {v14, v15, v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v14}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v2

    const/16 v15, 0x16

    invoke-direct {v1, v15, v2}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x14

    invoke-direct {v3, v9, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v14, 0x4

    const/16 v15, 0x15

    invoke-direct {v9, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v9}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    const/16 v9, 0x18

    invoke-direct {v2, v9, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xc

    const/16 v15, 0xb

    invoke-direct {v9, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v45, v4

    const/4 v4, 0x4

    invoke-direct {v15, v4, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v9, v15}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v15, 0x16

    invoke-direct {v3, v15, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v0, v1, v2, v3}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v14, 0xd

    invoke-direct {v13, v14, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v0, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v2, 0x73

    const/4 v9, 0x3

    invoke-direct {v1, v9, v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x74

    const/4 v15, 0x1

    invoke-direct {v3, v15, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v1, v3}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    const/16 v3, 0x1e

    invoke-direct {v0, v3, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v1, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x28

    const/4 v9, 0x4

    invoke-direct {v3, v9, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x29

    const/4 v4, 0x5

    invoke-direct {v9, v4, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v9}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    const/16 v9, 0x18

    invoke-direct {v1, v9, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v2, 0x10

    const/16 v15, 0xb

    invoke-direct {v9, v15, v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x11

    invoke-direct {v2, v4, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v9, v2}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v2

    const/16 v15, 0x14

    invoke-direct {v3, v15, v2}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0xc

    const/16 v15, 0xb

    invoke-direct {v9, v15, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v46, v5

    const/4 v5, 0x5

    const/16 v15, 0xd

    invoke-direct {v4, v5, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v9, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v9, 0x18

    invoke-direct {v2, v9, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v0, v1, v3, v2}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v15, 0xe

    invoke-direct {v14, v15, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v0, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v2, 0x57

    invoke-direct {v1, v5, v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v3, 0x58

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v1, v2}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    const/16 v2, 0x16

    invoke-direct {v0, v2, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v1, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v3, 0x29

    invoke-direct {v2, v5, v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x2a

    invoke-direct {v3, v5, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v2, v3}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v2

    const/16 v9, 0x18

    invoke-direct {v1, v9, v2}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v3, v5, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x19

    const/4 v4, 0x7

    invoke-direct {v5, v4, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    const/16 v5, 0x1e

    invoke-direct {v2, v5, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0xc

    const/16 v9, 0xb

    invoke-direct {v5, v9, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v47, v6

    const/16 v6, 0xd

    const/4 v9, 0x7

    invoke-direct {v4, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v9, 0x18

    invoke-direct {v3, v9, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v0, v1, v2, v3}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v3, 0xf

    invoke-direct {v15, v3, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v1, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v3, 0x62

    const/4 v4, 0x5

    invoke-direct {v2, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x63

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v2, v3}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v2

    const/16 v9, 0x18

    invoke-direct {v1, v9, v2}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x2d

    const/4 v9, 0x7

    invoke-direct {v3, v9, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x2e

    const/4 v9, 0x3

    invoke-direct {v5, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0xf

    const/16 v9, 0x13

    invoke-direct {v5, v4, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x14

    const/4 v6, 0x2

    invoke-direct {v9, v6, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v9}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v9, 0x18

    invoke-direct {v3, v9, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xf

    const/4 v9, 0x3

    invoke-direct {v5, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v49, v7

    const/16 v7, 0xd

    const/16 v9, 0x10

    invoke-direct {v6, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v1, v2, v3, v4}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v4, 0x1

    const/16 v5, 0x6b

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v6, 0x5

    const/16 v7, 0x6c

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0xa

    const/16 v9, 0x2e

    invoke-direct {v6, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x2f

    invoke-direct {v7, v4, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v6, v7}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v6, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x16

    invoke-direct {v7, v4, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x17

    const/16 v9, 0xf

    invoke-direct {v4, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v6, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x2

    const/16 v9, 0xe

    invoke-direct {v7, v5, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x11

    move-object/from16 v50, v0

    const/16 v0, 0xf

    invoke-direct {v5, v9, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v0

    const/16 v5, 0x1c

    invoke-direct {v4, v5, v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v6, v4}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x78

    const/4 v5, 0x5

    invoke-direct {v3, v5, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x79

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    const/16 v6, 0x1e

    invoke-direct {v2, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x2b

    const/16 v9, 0x9

    invoke-direct {v4, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2c

    const/4 v9, 0x4

    invoke-direct {v6, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v6, 0x1a

    invoke-direct {v3, v6, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x16

    const/16 v9, 0x11

    invoke-direct {v6, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x17

    const/4 v9, 0x1

    invoke-direct {v7, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v6, v7}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1c

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xe

    const/4 v9, 0x2

    invoke-direct {v7, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v51, v1

    const/16 v1, 0xf

    const/16 v9, 0x13

    invoke-direct {v6, v9, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    const/16 v6, 0x1c

    invoke-direct {v5, v6, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v1

    const/16 v7, 0x12

    invoke-direct {v0, v7, v1}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x71

    const/4 v9, 0x3

    invoke-direct {v3, v9, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x72

    const/4 v6, 0x4

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    const/16 v6, 0x1c

    invoke-direct {v2, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2c

    invoke-direct {v4, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2d

    const/16 v9, 0xb

    invoke-direct {v6, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v6, 0x1a

    invoke-direct {v3, v6, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x15

    const/16 v9, 0x11

    invoke-direct {v7, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v6, 0x4

    const/16 v9, 0x16

    invoke-direct {v5, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1a

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x9

    const/16 v9, 0xd

    invoke-direct {v7, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x10

    move-object/from16 v32, v0

    const/16 v0, 0xe

    invoke-direct {v6, v9, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v0

    const/16 v6, 0x1a

    invoke-direct {v5, v6, v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v9, 0x13

    invoke-direct {v1, v9, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x6b

    const/4 v9, 0x3

    invoke-direct {v3, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x5

    const/16 v7, 0x6c

    invoke-direct {v4, v5, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x29

    invoke-direct {v4, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xd

    const/16 v7, 0x2a

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v6, 0x1a

    invoke-direct {v3, v6, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xf

    const/16 v9, 0x18

    invoke-direct {v5, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x19

    const/4 v9, 0x5

    invoke-direct {v7, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v7}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0xf

    invoke-direct {v6, v9, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v30, v1

    const/16 v1, 0x10

    const/16 v9, 0xa

    invoke-direct {v7, v9, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v6, v7}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    const/16 v6, 0x1c

    invoke-direct {v5, v6, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v1

    const/16 v4, 0x14

    invoke-direct {v0, v4, v1}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x74

    const/4 v9, 0x4

    invoke-direct {v3, v9, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x75

    invoke-direct {v4, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2a

    const/16 v9, 0x11

    invoke-direct {v4, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v6, 0x1a

    invoke-direct {v3, v6, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x16

    invoke-direct {v6, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x6

    const/16 v9, 0x17

    invoke-direct {v7, v5, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v6, v7}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v6

    const/16 v7, 0x1c

    invoke-direct {v4, v7, v6}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v6, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x10

    const/16 v9, 0x13

    invoke-direct {v7, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x11

    move-object/from16 v52, v0

    const/4 v0, 0x6

    invoke-direct {v5, v0, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v0

    const/16 v5, 0x1e

    invoke-direct {v6, v5, v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v6}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v5, 0x15

    invoke-direct {v1, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x6f

    const/4 v5, 0x2

    invoke-direct {v3, v5, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x70

    const/4 v9, 0x7

    invoke-direct {v4, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x11

    const/16 v7, 0x2e

    invoke-direct {v4, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x18

    invoke-direct {v5, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x19

    const/16 v9, 0x10

    invoke-direct {v7, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v7}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0xd

    const/16 v9, 0x22

    invoke-direct {v6, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v6

    const/16 v9, 0x18

    invoke-direct {v5, v9, v6}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v2

    const/16 v7, 0x16

    invoke-direct {v0, v7, v2}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x79

    const/4 v9, 0x4

    invoke-direct {v4, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x7a

    const/4 v7, 0x5

    invoke-direct {v5, v7, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2f

    invoke-direct {v5, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x30

    const/16 v6, 0xe

    invoke-direct {v7, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v7}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v7, 0x1c

    invoke-direct {v4, v7, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xb

    const/16 v9, 0x18

    invoke-direct {v7, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0xe

    move-object/from16 v53, v0

    const/16 v0, 0x19

    invoke-direct {v6, v9, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v0

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v0, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x10

    const/16 v9, 0xf

    invoke-direct {v7, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v54, v1

    const/16 v1, 0xe

    invoke-direct {v9, v1, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v9}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    const/16 v6, 0x1e

    invoke-direct {v0, v6, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v3, v4, v5, v0}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v5, 0x17

    invoke-direct {v2, v5, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v1, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x75

    const/4 v5, 0x6

    invoke-direct {v3, v5, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x76

    const/4 v9, 0x4

    invoke-direct {v4, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    invoke-direct {v1, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x2d

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xe

    const/16 v9, 0x2e

    invoke-direct {v5, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xb

    const/16 v9, 0x18

    invoke-direct {v5, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x19

    const/16 v9, 0x10

    invoke-direct {v6, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v7, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v55, v2

    const/4 v2, 0x2

    const/16 v6, 0x11

    invoke-direct {v9, v2, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v9}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v2

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v2}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v1, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v1

    const/16 v9, 0x18

    invoke-direct {v0, v9, v1}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x6a

    const/16 v9, 0x8

    invoke-direct {v3, v9, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x6b

    const/4 v6, 0x4

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    const/16 v6, 0x1a

    invoke-direct {v2, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2f

    invoke-direct {v4, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xd

    const/16 v7, 0x30

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x18

    const/4 v9, 0x7

    invoke-direct {v5, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x16

    const/16 v9, 0x19

    invoke-direct {v6, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xf

    invoke-direct {v9, v7, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x10

    move-object/from16 v44, v0

    const/16 v0, 0xd

    invoke-direct {v6, v0, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v9, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v0

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v6, 0x19

    invoke-direct {v1, v6, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x72

    const/16 v7, 0xa

    invoke-direct {v3, v7, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x2

    const/16 v6, 0x73

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2e

    const/16 v9, 0x13

    invoke-direct {v4, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2f

    const/4 v9, 0x4

    invoke-direct {v6, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x16

    invoke-direct {v6, v5, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x17

    const/4 v9, 0x6

    invoke-direct {v7, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v6, v7}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1c

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x21

    const/16 v9, 0x10

    invoke-direct {v6, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v56, v1

    const/4 v1, 0x4

    const/16 v7, 0x11

    invoke-direct {v9, v1, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v6, v9}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v6

    const/16 v7, 0x1e

    invoke-direct {v5, v7, v6}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v2

    const/16 v6, 0x1a

    invoke-direct {v0, v6, v2}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x7a

    const/16 v9, 0x8

    invoke-direct {v4, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x7b

    invoke-direct {v5, v1, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    invoke-direct {v3, v7, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v1, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x2d

    const/16 v7, 0x16

    invoke-direct {v4, v7, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2e

    const/4 v9, 0x3

    invoke-direct {v5, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v1, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x17

    const/16 v9, 0x8

    invoke-direct {v5, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x18

    const/16 v9, 0x1a

    invoke-direct {v7, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v7}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xc

    const/16 v9, 0xf

    invoke-direct {v7, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x10

    move-object/from16 v57, v0

    const/16 v0, 0x1c

    invoke-direct {v6, v0, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v0

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v3, v1, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v1, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x75

    const/4 v9, 0x3

    invoke-direct {v3, v9, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x76

    const/16 v7, 0xa

    invoke-direct {v4, v7, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    invoke-direct {v1, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x2d

    invoke-direct {v4, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2e

    const/16 v9, 0x17

    invoke-direct {v5, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x18

    const/4 v9, 0x4

    invoke-direct {v5, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x1f

    const/16 v9, 0x19

    invoke-direct {v6, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xf

    const/16 v7, 0xb

    invoke-direct {v9, v7, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v37, v2

    const/16 v2, 0x1f

    const/16 v7, 0x10

    invoke-direct {v6, v2, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v9, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v2

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v2}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v1, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v1

    const/16 v5, 0x1c

    invoke-direct {v0, v5, v1}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x74

    const/4 v9, 0x7

    invoke-direct {v3, v9, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x75

    invoke-direct {v4, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x15

    const/16 v6, 0x2d

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2e

    invoke-direct {v5, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v6, 0x1

    const/16 v9, 0x17

    invoke-direct {v5, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x25

    const/16 v9, 0x18

    invoke-direct {v6, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xf

    const/16 v9, 0x13

    invoke-direct {v7, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x10

    move-object/from16 v48, v0

    const/16 v0, 0x1a

    invoke-direct {v6, v0, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v0

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v2, 0x1d

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x5

    const/16 v7, 0x73

    invoke-direct {v4, v5, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0xa

    const/16 v9, 0x74

    invoke-direct {v5, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x2f

    const/16 v9, 0x13

    invoke-direct {v5, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x30

    invoke-direct {v6, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1c

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x18

    const/16 v9, 0xf

    invoke-direct {v6, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v2, 0x19

    invoke-direct {v7, v2, v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v6, v7}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v6

    const/16 v7, 0x1e

    invoke-direct {v5, v7, v6}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v6, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v2, 0x17

    invoke-direct {v7, v2, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v58, v1

    const/16 v1, 0x19

    const/16 v9, 0x10

    invoke-direct {v2, v1, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v2}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    const/16 v7, 0x1e

    invoke-direct {v6, v7, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v3, v4, v5, v6}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x73

    const/16 v6, 0xd

    invoke-direct {v3, v6, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x74

    const/4 v9, 0x3

    invoke-direct {v4, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x2

    const/16 v7, 0x2e

    invoke-direct {v4, v5, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x1d

    const/16 v7, 0x2f

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2a

    const/16 v9, 0x18

    invoke-direct {v5, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x19

    const/4 v9, 0x1

    invoke-direct {v6, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x17

    const/16 v9, 0xf

    invoke-direct {v7, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x10

    move-object/from16 v24, v0

    const/16 v0, 0x1c

    invoke-direct {v6, v0, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v0

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v2, 0x1f

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x73

    const/16 v9, 0x11

    invoke-direct {v3, v9, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0xa

    const/16 v9, 0x2e

    invoke-direct {v4, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x2f

    const/16 v9, 0x17

    invoke-direct {v5, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x18

    invoke-direct {v5, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x23

    const/16 v9, 0x19

    invoke-direct {v6, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x13

    const/16 v7, 0xf

    invoke-direct {v9, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v59, v1

    const/16 v1, 0x23

    const/16 v7, 0x10

    invoke-direct {v6, v1, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v9, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x73

    const/16 v9, 0x11

    invoke-direct {v3, v9, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x74

    const/4 v9, 0x1

    invoke-direct {v4, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xe

    const/16 v7, 0x2e

    invoke-direct {v4, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x15

    const/16 v7, 0x2f

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x1d

    const/16 v9, 0x18

    invoke-direct {v5, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x19

    const/16 v9, 0x13

    invoke-direct {v6, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xb

    const/16 v9, 0xf

    invoke-direct {v7, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x10

    move-object/from16 v34, v0

    const/16 v0, 0x2e

    invoke-direct {v6, v0, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v0

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v2, 0x21

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x73

    const/16 v7, 0xd

    invoke-direct {v3, v7, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v5, 0x6

    const/16 v9, 0x74

    invoke-direct {v4, v5, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xe

    const/16 v7, 0x2e

    invoke-direct {v4, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2f

    const/16 v9, 0x17

    invoke-direct {v5, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2c

    const/16 v9, 0x18

    invoke-direct {v5, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x19

    const/4 v9, 0x7

    invoke-direct {v6, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x3b

    const/16 v6, 0x10

    invoke-direct {v7, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v1

    const/16 v1, 0x11

    const/4 v9, 0x1

    invoke-direct {v6, v9, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v1

    const/16 v9, 0x22

    invoke-direct {v0, v9, v1}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0xc

    const/16 v5, 0x79

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x7a

    const/4 v9, 0x7

    invoke-direct {v5, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2f

    invoke-direct {v5, v4, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x1a

    const/16 v7, 0x30

    invoke-direct {v4, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x27

    const/16 v9, 0x18

    invoke-direct {v5, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x19

    const/16 v9, 0xe

    invoke-direct {v6, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xf

    const/16 v9, 0x16

    invoke-direct {v7, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x10

    move-object/from16 v33, v0

    const/16 v0, 0x29

    invoke-direct {v6, v0, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v0

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v2, 0x23

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x79

    const/4 v5, 0x6

    invoke-direct {v3, v5, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x7a

    const/16 v9, 0xe

    invoke-direct {v4, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2f

    invoke-direct {v4, v5, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x30

    const/16 v9, 0x22

    invoke-direct {v5, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2e

    const/16 v9, 0x18

    invoke-direct {v5, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0xa

    const/16 v9, 0x19

    invoke-direct {v6, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xf

    const/4 v9, 0x2

    invoke-direct {v7, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x40

    move-object/from16 v35, v1

    const/16 v1, 0x10

    invoke-direct {v6, v9, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v1

    const/16 v9, 0x24

    invoke-direct {v0, v9, v1}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x7a

    const/16 v9, 0x11

    invoke-direct {v3, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x7b

    const/4 v9, 0x4

    invoke-direct {v4, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x1d

    const/16 v7, 0x2e

    invoke-direct {v4, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xe

    const/16 v7, 0x2f

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x31

    const/16 v9, 0x18

    invoke-direct {v5, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0xa

    const/16 v9, 0x19

    invoke-direct {v6, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x18

    const/16 v9, 0xf

    invoke-direct {v7, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x10

    move-object/from16 v36, v0

    const/16 v0, 0x2e

    invoke-direct {v6, v0, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v0

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v7, 0x25

    invoke-direct {v1, v7, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x7a

    const/4 v9, 0x4

    invoke-direct {v3, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x7b

    const/16 v7, 0x12

    invoke-direct {v4, v7, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xd

    const/16 v7, 0x2e

    invoke-direct {v4, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x20

    const/16 v7, 0x2f

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x30

    const/16 v9, 0x18

    invoke-direct {v5, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x19

    const/16 v9, 0xe

    invoke-direct {v6, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x2a

    const/16 v9, 0xf

    invoke-direct {v7, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v22, v1

    const/16 v1, 0x20

    const/16 v9, 0x10

    invoke-direct {v6, v1, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v1

    const/16 v2, 0x26

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x14

    const/16 v5, 0x75

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x76

    const/4 v9, 0x4

    invoke-direct {v4, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x28

    const/16 v7, 0x2f

    invoke-direct {v4, v5, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x30

    const/4 v9, 0x7

    invoke-direct {v5, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x2b

    const/16 v9, 0x18

    invoke-direct {v5, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x16

    const/16 v9, 0x19

    invoke-direct {v6, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xf

    const/16 v9, 0xa

    invoke-direct {v7, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x43

    move-object/from16 v17, v0

    const/16 v0, 0x10

    invoke-direct {v6, v9, v0}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v0

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    const/16 v2, 0x27

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x76

    const/16 v9, 0x13

    invoke-direct {v3, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x77

    const/4 v9, 0x6

    invoke-direct {v4, v9, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v3, v4}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x2f

    const/16 v7, 0x12

    invoke-direct {v4, v7, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x1f

    const/16 v9, 0x30

    invoke-direct {v5, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v4, v5}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v3, v5, v4}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x18

    const/16 v9, 0x22

    invoke-direct {v5, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x19

    invoke-direct {v6, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v5, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v6, v5}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Landroidx/media3/extractor/mkv/Sniffer;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x14

    const/16 v9, 0xf

    invoke-direct {v7, v6, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x3d

    move-object/from16 v39, v1

    const/16 v1, 0x10

    invoke-direct {v6, v9, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    filled-new-array {v7, v6}, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    filled-new-array {v2, v3, v4, v5}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v1

    const/16 v5, 0x28

    invoke-direct {v0, v5, v1}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V

    move-object/from16 v40, v0

    move-object/from16 v19, v30

    move-object/from16 v18, v32

    move-object/from16 v32, v34

    move-object/from16 v27, v37

    move-object/from16 v1, v38

    move-object/from16 v3, v41

    move-object/from16 v2, v42

    move-object/from16 v7, v43

    move-object/from16 v4, v45

    move-object/from16 v5, v46

    move-object/from16 v6, v47

    move-object/from16 v28, v48

    move-object/from16 v9, v49

    move-object/from16 v16, v50

    move-object/from16 v21, v54

    move-object/from16 v23, v55

    move-object/from16 v25, v56

    move-object/from16 v26, v57

    move-object/from16 v29, v58

    move-object/from16 v31, v59

    move-object/from16 v38, v17

    move-object/from16 v37, v22

    move-object/from16 v30, v24

    move-object/from16 v34, v33

    move-object/from16 v24, v44

    move-object/from16 v17, v51

    move-object/from16 v22, v53

    move-object/from16 v33, v20

    move-object/from16 v20, v52

    filled-new-array/range {v1 .. v40}, [Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    return-void
.end method

.method public varargs constructor <init>(I[Landroidx/media3/extractor/mkv/Sniffer;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Landroidx/media3/extractor/mkv/Sniffer;

    const/4 p1, 0x0

    aget-object p2, p2, p1

    iget v0, p2, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    iget-object p2, p2, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast p2, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v1, p2

    move v2, p1

    :goto_0
    if-ge p1, v1, :cond_0

    aget-object v3, p2, p1

    iget v4, v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    iget v3, v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    add-int/2addr v3, v0

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    return-void
.end method

.method public static getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x28

    if-gt p0, v1, :cond_0

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
