.class public final enum Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

.field public static final enum CALL_BY_NAME:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

.field public static final enum POSITIONAL_CALL:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

    const-string v1, "CALL_BY_NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;->CALL_BY_NAME:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

    new-instance v1, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

    const-string v2, "POSITIONAL_CALL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;->POSITIONAL_CALL:Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

    filled-new-array {v0, v1}, [Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;->$VALUES:[Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;->$VALUES:[Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;

    return-object v0
.end method
