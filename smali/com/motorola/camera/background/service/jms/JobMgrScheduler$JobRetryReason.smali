.class public final enum Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

.field public static final enum COPROC:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

.field public static final enum CRASH:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

.field public static final enum JMS:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    const-string v1, "JMS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;->JMS:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    const-string v2, "COPROC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;->COPROC:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    new-instance v2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    const-string v3, "CRASH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;->CRASH:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;->$VALUES:[Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;->$VALUES:[Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    return-object v0
.end method
