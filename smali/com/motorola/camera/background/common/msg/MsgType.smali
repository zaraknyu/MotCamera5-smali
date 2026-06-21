.class public final enum Lcom/motorola/camera/background/common/msg/MsgType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum CANCEL_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final CREATOR:Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

.field public static final enum JOB_RECEIVED_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_CTL_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB_COMPLETE:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB_COMPLETE_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB_RETRY:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum SET_PROCESSING_PRIORITY:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum SUSPEND_PROCESSING:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum UNKNOWN:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final map:Ljava/util/LinkedHashMap;


# instance fields
.field public final msgCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v1, Lcom/motorola/camera/background/common/msg/MsgType;

    const/4 v0, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->UNKNOWN:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v2, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v0, "PROCESS_JOB"

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4, v3}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

    move v0, v3

    new-instance v3, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v5, "PROCESS_JOB_COMPLETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_COMPLETE:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v4, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v5, "CANCEL_JOB"

    const/4 v7, 0x3

    invoke-direct {v4, v5, v7, v6}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/motorola/camera/background/common/msg/MsgType;->CANCEL_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v5, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v6, "PROGRESS_INDICATOR"

    const/4 v8, 0x4

    invoke-direct {v5, v6, v8, v7}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v7, "CANCEL_ALL_JOBS"

    const/4 v9, 0x5

    invoke-direct {v6, v7, v9, v8}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v8, "PROCESS_JOB_ACK"

    const/4 v10, 0x6

    invoke-direct {v7, v8, v10, v9}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v8, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v9, "JOB_RECEIVED_ACK"

    const/4 v11, 0x7

    invoke-direct {v8, v9, v11, v10}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/motorola/camera/background/common/msg/MsgType;->JOB_RECEIVED_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v9, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v10, "JOB_DATA_READ_COMPLETE"

    const/16 v12, 0x8

    invoke-direct {v9, v10, v12, v11}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v11, "PROCESS_JOB_RETRY"

    const/16 v13, 0x9

    invoke-direct {v10, v11, v13, v12}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_RETRY:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v11, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v12, "SUSPEND_PROCESSING"

    const/16 v14, 0xa

    invoke-direct {v11, v12, v14, v13}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/motorola/camera/background/common/msg/MsgType;->SUSPEND_PROCESSING:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v12, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v13, "SET_PROCESSING_PRIORITY"

    const/16 v15, 0xb

    invoke-direct {v12, v13, v15, v14}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/motorola/camera/background/common/msg/MsgType;->SET_PROCESSING_PRIORITY:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v13, Lcom/motorola/camera/background/common/msg/MsgType;

    const/16 v14, 0xc

    const/16 v15, 0x64

    const-string v0, "PROCESS_JOB_IMAGE"

    invoke-direct {v13, v0, v14, v15}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v14, Lcom/motorola/camera/background/common/msg/MsgType;

    const/16 v0, 0xd

    const/16 v15, 0x65

    move-object/from16 v17, v1

    const-string v1, "PROCESS_JOB_COMPLETE_IMAGE"

    invoke-direct {v14, v1, v0, v15}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_COMPLETE_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v15, Lcom/motorola/camera/background/common/msg/MsgType;

    const/16 v0, 0xe

    const/16 v1, 0x66

    move-object/from16 v18, v2

    const-string v2, "CANCEL_JOB_IMAGE"

    invoke-direct {v15, v2, v0, v1}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgType;

    const/16 v1, 0xf

    const/16 v2, 0x3e8

    move-object/from16 v19, v3

    const-string v3, "PROCESS_MSG"

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v1, Lcom/motorola/camera/background/common/msg/MsgType;

    const/16 v2, 0x3e9

    const-string v3, "PROCESS_CTL_MSG"

    move-object/from16 v20, v0

    const/16 v0, 0x10

    invoke-direct {v1, v3, v0, v2}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_CTL_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    move-object/from16 v2, v17

    move-object/from16 v17, v1

    move-object v1, v2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v16, v20

    const/16 v18, 0x0

    filled-new-array/range {v1 .. v17}, [Lcom/motorola/camera/background/common/msg/MsgType;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->$VALUES:[Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v1, Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->CREATOR:Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

    invoke-static {}, Lcom/motorola/camera/background/common/msg/MsgType;->values()[Lcom/motorola/camera/background/common/msg/MsgType;

    move-result-object v1

    array-length v2, v1

    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length v0, v1

    move/from16 v3, v18

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v4, v1, v3

    iget v5, v4, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sput-object v2, Lcom/motorola/camera/background/common/msg/MsgType;->map:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/common/msg/MsgType;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/msg/MsgType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/common/msg/MsgType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->$VALUES:[Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/common/msg/MsgType;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string/jumbo p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
