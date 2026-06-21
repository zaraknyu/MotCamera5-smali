.class public final enum Lcom/motorola/camera/utility/ZoomSegment;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/utility/ZoomSegment;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0011j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/motorola/camera/utility/ZoomSegment;",
        "Landroid/os/Parcelable;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "UW",
        "W",
        "T",
        "M",
        "W_2X",
        "T_E",
        "T_U",
        "PO",
        "PW",
        "PS",
        "PC",
        "describeContents",
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "MotCamera5-v10.0.47.24_release"
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/motorola/camera/utility/ZoomSegment;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/camera/utility/ZoomSegment;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum M:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum PC:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum PO:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum PS:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum PW:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum T:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum T_E:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum T_U:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum UW:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum W:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum W_2X:Lcom/motorola/camera/utility/ZoomSegment;


# direct methods
.method private static final synthetic $values()[Lcom/motorola/camera/utility/ZoomSegment;
    .locals 11

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v5, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v6, Lcom/motorola/camera/utility/ZoomSegment;->T_U:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v7, Lcom/motorola/camera/utility/ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v8, Lcom/motorola/camera/utility/ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v9, Lcom/motorola/camera/utility/ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v10, Lcom/motorola/camera/utility/ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomSegment;

    filled-new-array/range {v0 .. v10}, [Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "UW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "W"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "T"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "M"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "W_2X"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "T_E"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "T_U"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T_U:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "PO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "PW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "PS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "PC"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-static {}, Lcom/motorola/camera/utility/ZoomSegment;->$values()[Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->$VALUES:[Lcom/motorola/camera/utility/ZoomSegment;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment$Creator;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/utility/ZoomSegment;
    .locals 1

    const-class v0, Lcom/motorola/camera/utility/ZoomSegment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/ZoomSegment;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/utility/ZoomSegment;
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->$VALUES:[Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/utility/ZoomSegment;

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

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
