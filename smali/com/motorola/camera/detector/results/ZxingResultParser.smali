.class public abstract Lcom/motorola/camera/detector/results/ZxingResultParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CODE_128_PREFIXES:Ljava/util/List;

.field public static final FORMATS_2D:Ljava/util/EnumSet;

.field public static final sMlKitToZxingFormats:Ljava/util/Map;

.field public static final sSourceAnalytics:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-string v0, "X0"

    const-string v1, "B0"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/detector/results/ZxingResultParser;->CODE_128_PREFIXES:Ljava/util/List;

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/detector/results/ZxingResultParser;->FORMATS_2D:Ljava/util/EnumSet;

    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->AZTEC:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    invoke-virtual {v4, v0, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->CODABAR:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v4, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->CODE_39:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v4, v7, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->CODE_93:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v4, v8, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->CODE_128:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    sget-object v9, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v4, v9, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->DATA_MATRIX:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    invoke-virtual {v4, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->EAN:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    sget-object v10, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v4, v10, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->EAN_13:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    sget-object v11, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v4, v11, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->ITF:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    sget-object v12, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v4, v12, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    sget-object v13, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->MAXICODE:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    invoke-virtual {v4, v5, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->PDF_417:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    invoke-virtual {v4, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->QR_CODE:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    sget-object v13, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->RSS_14:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    invoke-virtual {v4, v5, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    sget-object v13, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->RSS_EXPANDED:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    invoke-virtual {v4, v5, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->UPC_A:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    sget-object v13, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v4, v13, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->UPC_E:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    sget-object v14, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v4, v14, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    sget-object v15, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->UPC_EAN_EXTENSION:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    invoke-virtual {v4, v5, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/detector/results/ZxingResultParser;->sSourceAnalytics:Ljava/util/Map;

    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v15

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v16

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v17

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v18

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v9}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v19

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v20

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v10}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v21

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v22

    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v12}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v23

    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v24

    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v25

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v13}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v26

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v14}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v27

    filled-new-array/range {v15 .. v27}, [Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/detector/results/ZxingResultParser;->sMlKitToZxingFormats:Ljava/util/Map;

    return-void
.end method
