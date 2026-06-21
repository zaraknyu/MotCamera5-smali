.class public Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public argumentsDepth:I

.field public final isErrorTypeEqualsToAnything:Z

.field public final isStubTypeEqualsToAnything:Z

.field public final kotlinTypePreparator:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;

.field public final kotlinTypeRefiner:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

.field public supertypesDeque:Ljava/util/ArrayDeque;

.field public supertypesSet:Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

.field public final typeSystemContext:Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;


# direct methods
.method public constructor <init>(ZZLkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;)V
    .locals 1

    const-string/jumbo v0, "typeSystemContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypePreparator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->isErrorTypeEqualsToAnything:Z

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->isStubTypeEqualsToAnything:Z

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->typeSystemContext:Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->kotlinTypePreparator:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;

    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->kotlinTypeRefiner:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesDeque:Ljava/util/ArrayDeque;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesSet:Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->clear()V

    return-void
.end method

.method public customIsSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final initialize()V
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesDeque:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesDeque:Ljava/util/ArrayDeque;

    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesSet:Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    if-nez v0, :cond_1

    sget v0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->$r8$clinit:I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->create()Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesSet:Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    :cond_1
    return-void
.end method

.method public final prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->kotlinTypePreparator:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    return-object p0
.end method

.method public final refineType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->kotlinTypeRefiner:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object p1
.end method
