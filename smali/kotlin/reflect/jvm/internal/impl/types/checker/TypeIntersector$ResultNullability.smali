.class public abstract enum Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;

.field public static final enum ACCEPT_NULL:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$ACCEPT_NULL;

.field public static final enum NOT_NULL:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$NOT_NULL;

.field public static final enum START:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$START;

.field public static final enum UNKNOWN:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$UNKNOWN;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$START;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$START;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->START:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$START;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$ACCEPT_NULL;

    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$ACCEPT_NULL;-><init>()V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->ACCEPT_NULL:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$ACCEPT_NULL;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$UNKNOWN;

    invoke-direct {v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$UNKNOWN;-><init>()V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$UNKNOWN;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$NOT_NULL;

    invoke-direct {v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$NOT_NULL;-><init>()V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$NOT_NULL;

    filled-new-array {v0, v1, v2, v3}, [Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static getResultNullability(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->ACCEPT_NULL:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$ACCEPT_NULL;

    return-object p0

    :cond_0
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;->newTypeCheckerState()Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;

    move-result-object v0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    invoke-static {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->hasNotNullSupertype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$NOT_NULL;

    return-object p0

    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$UNKNOWN;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;

    return-object v0
.end method


# virtual methods
.method public abstract combine(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;
.end method
