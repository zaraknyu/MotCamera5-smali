.class public final enum Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

.field public static final enum Capturing:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

.field public static final enum LookingForDocument:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

.field public static final enum None:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    const-string v1, "LookingForDocument"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;->LookingForDocument:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    new-instance v1, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    const-string v2, "Capturing"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;->Capturing:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    new-instance v2, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    const-string v3, "None"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;->None:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    filled-new-array {v0, v1, v2}, [Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    move-result-object v0

    sput-object v0, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;->$VALUES:[Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;
    .locals 1

    const-class v0, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    return-object p0
.end method

.method public static values()[Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;
    .locals 1

    sget-object v0, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;->$VALUES:[Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    return-object v0
.end method
