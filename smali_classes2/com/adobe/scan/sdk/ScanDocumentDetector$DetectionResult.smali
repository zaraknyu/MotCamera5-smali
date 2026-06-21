.class public final enum Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

.field public static final enum Document:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

.field public static final enum Failed:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

.field public static final enum LowConfidence:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

.field public static final enum NotDocument:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    const-string v1, "Document"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;->Document:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    new-instance v1, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    const-string v2, "NotDocument"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;->NotDocument:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    new-instance v2, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    const-string v3, "LowConfidence"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;->LowConfidence:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    new-instance v3, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    const-string v4, "Failed"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;->Failed:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    filled-new-array {v0, v1, v2, v3}, [Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    move-result-object v0

    sput-object v0, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;->$VALUES:[Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;
    .locals 1

    const-class v0, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    return-object p0
.end method

.method public static values()[Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;
    .locals 1

    sget-object v0, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;->$VALUES:[Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    return-object v0
.end method
