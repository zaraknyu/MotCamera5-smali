.class public abstract enum Lcom/google/gson/ToNumberPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/google/gson/ToNumberPolicy;

.field public static final enum DOUBLE:Lcom/google/gson/ToNumberPolicy$1;

.field public static final enum LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy$2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/gson/ToNumberPolicy$1;

    invoke-direct {v0}, Lcom/google/gson/ToNumberPolicy$1;-><init>()V

    sput-object v0, Lcom/google/gson/ToNumberPolicy;->DOUBLE:Lcom/google/gson/ToNumberPolicy$1;

    new-instance v1, Lcom/google/gson/ToNumberPolicy$2;

    invoke-direct {v1}, Lcom/google/gson/ToNumberPolicy$2;-><init>()V

    sput-object v1, Lcom/google/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy$2;

    new-instance v2, Lcom/google/gson/ToNumberPolicy$3;

    invoke-direct {v2}, Lcom/google/gson/ToNumberPolicy$3;-><init>()V

    new-instance v3, Lcom/google/gson/ToNumberPolicy$4;

    invoke-direct {v3}, Lcom/google/gson/ToNumberPolicy$4;-><init>()V

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/gson/ToNumberPolicy;

    move-result-object v0

    sput-object v0, Lcom/google/gson/ToNumberPolicy;->$VALUES:[Lcom/google/gson/ToNumberPolicy;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/ToNumberPolicy;
    .locals 1

    const-class v0, Lcom/google/gson/ToNumberPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/gson/ToNumberPolicy;

    return-object p0
.end method

.method public static values()[Lcom/google/gson/ToNumberPolicy;
    .locals 1

    sget-object v0, Lcom/google/gson/ToNumberPolicy;->$VALUES:[Lcom/google/gson/ToNumberPolicy;

    invoke-virtual {v0}, [Lcom/google/gson/ToNumberPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/ToNumberPolicy;

    return-object v0
.end method


# virtual methods
.method public abstract readNumber(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;
.end method
