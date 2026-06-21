.class public final enum Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum CONTACT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum COPY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum DIAL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum EMAIL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum EVENT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum FIDO:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum MATTER:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum MONOPOLY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum MOTORDP:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum SEARCH:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum SMS:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum WEB:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum WIFI:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;


# instance fields
.field public final sCheckinCode:I

.field public final sRes:I

.field public final sText:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const v4, 0x7f0801cc

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->ADD_CONTACT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v1, "CONTACT"

    const/4 v2, 0x0

    const v3, 0x7f120071

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->CONTACT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const v5, 0x7f0801cd

    sget-object v6, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->COPY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v2, "COPY"

    const/4 v3, 0x1

    const v4, 0x7f120072

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->COPY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const v6, 0x7f0801b6

    sget-object v7, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->CALL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v3, "DIAL"

    const/4 v4, 0x2

    const v5, 0x7f120073

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->DIAL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const v7, 0x7f080215

    sget-object v8, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->EMAIL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v4, "EMAIL"

    const/4 v5, 0x3

    const v6, 0x7f120074

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v3, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->EMAIL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v4, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const v8, 0x7f0801b5

    sget-object v9, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->ADD_EVENT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v5, "EVENT"

    const/4 v6, 0x4

    const v7, 0x7f120075

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v4, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->EVENT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v5, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const v9, 0x7f080210

    sget-object v10, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MAP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v6, "LOCATION"

    const/4 v7, 0x5

    const v8, 0x7f120077

    invoke-direct/range {v5 .. v10}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v5, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v6, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const v10, 0x7f08027c

    sget-object v11, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SEARCH:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v7, "SEARCH"

    const/4 v8, 0x6

    const v9, 0x7f12007c

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v6, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SEARCH:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const v11, 0x7f080280

    sget-object v12, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SHARE:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v8, "SHARE"

    const/4 v9, 0x7

    const v10, 0x7f12007d

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v8, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const v12, 0x7f080216

    sget-object v13, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SMS:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v9, "SMS"

    const/16 v10, 0x8

    const v11, 0x7f12007e

    invoke-direct/range {v8 .. v13}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v8, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SMS:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v9, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const v13, 0x7f08020d

    sget-object v14, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->WEB:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v10, "WEB"

    const/16 v11, 0x9

    const v12, 0x7f12007f

    invoke-direct/range {v9 .. v14}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v9, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->WEB:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v10, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const v14, 0x7f0802af

    sget-object v15, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->WIFI:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v11, "WIFI"

    const/16 v12, 0xa

    const v13, 0x7f120080

    invoke-direct/range {v10 .. v15}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v10, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->WIFI:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v11, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const v15, 0x7f0802af

    sget-object v16, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MOTORDP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v12, "MOTORDP"

    const/16 v13, 0xb

    const v14, 0x7f12007a

    invoke-direct/range {v11 .. v16}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v11, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MOTORDP:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v12, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const v16, 0x7f0801d6

    sget-object v17, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MONOPOLY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v13, "MONOPOLY"

    const/16 v14, 0xc

    const v15, 0x7f120079

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v12, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MONOPOLY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v13, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const v17, 0x7f0801d6

    sget-object v18, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MATTER:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v14, "MATTER"

    const/16 v15, 0xd

    const v16, 0x7f120078

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v13, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MATTER:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v14, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const v18, 0x7f080259

    sget-object v19, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->FIDO:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v15, "FIDO"

    const/16 v16, 0xe

    const v17, 0x7f120076

    invoke-direct/range {v14 .. v19}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v14, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->FIDO:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    filled-new-array/range {v0 .. v14}, [Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->$VALUES:[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sText:I

    iput p4, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sRes:I

    iget p1, p5, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->checkInData:I

    iput p1, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sCheckinCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;
    .locals 1

    const-class v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;
    .locals 1

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->$VALUES:[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-virtual {v0}, [Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    return-object v0
.end method
