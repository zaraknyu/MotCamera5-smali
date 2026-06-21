.class public final enum Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

.field public static final enum ILLUMINANT_50HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

.field public static final enum ILLUMINANT_60HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

.field public static final enum NONE:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->NONE:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    new-instance v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    const-string v2, "ILLUMINANT_50HZ"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->ILLUMINANT_50HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    new-instance v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    const-string v3, "ILLUMINANT_60HZ"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->ILLUMINANT_60HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->$VALUES:[Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;
    .locals 1

    const-class v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;
    .locals 1

    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->$VALUES:[Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    return-object v0
.end method
