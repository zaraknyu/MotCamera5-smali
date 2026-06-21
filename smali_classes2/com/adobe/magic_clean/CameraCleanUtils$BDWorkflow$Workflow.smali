.class public final enum Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Workflow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

.field public static final enum kWorkflowCombined:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

.field public static final enum kWorkflowHeuristics:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

.field public static final enum kWorkflowNN:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;


# direct methods
.method private static synthetic $values()[Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;
    .locals 3

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;->kWorkflowNN:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    sget-object v1, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;->kWorkflowHeuristics:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    sget-object v2, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;->kWorkflowCombined:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    filled-new-array {v0, v1, v2}, [Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    const-string v1, "kWorkflowNN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;->kWorkflowNN:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    const-string v1, "kWorkflowHeuristics"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;->kWorkflowHeuristics:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    const-string v1, "kWorkflowCombined"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;->kWorkflowCombined:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    invoke-static {}, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;->$values()[Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    move-result-object v0

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;
    .locals 1

    const-class v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    return-object p0
.end method

.method public static values()[Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;
    .locals 1

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    invoke-virtual {v0}, [Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    return-object v0
.end method
