.class public final Landroidx/work/Data$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IN_PROGRESS:Landroidx/work/Operation$State$IN_PROGRESS;

.field public static final SUCCESS:Landroidx/work/Operation$State$SUCCESS;


# instance fields
.field public values:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/Operation$State$SUCCESS;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/Data$Builder;->SUCCESS:Landroidx/work/Operation$State$SUCCESS;

    new-instance v0, Landroidx/work/Operation$State$IN_PROGRESS;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/Data$Builder;->IN_PROGRESS:Landroidx/work/Operation$State$IN_PROGRESS;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public putAll(Ljava/util/HashMap;)V
    .locals 9

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_14

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_3
    if-eqz v5, :cond_4

    move v5, v6

    goto :goto_4

    :cond_4
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_4
    if-eqz v5, :cond_5

    move v5, v6

    goto :goto_5

    :cond_5
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_5
    if-eqz v5, :cond_6

    move v5, v6

    goto :goto_6

    :cond_6
    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_6
    if-eqz v5, :cond_7

    move v5, v6

    goto :goto_7

    :cond_7
    const-class v5, [Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_7
    if-eqz v5, :cond_8

    move v5, v6

    goto :goto_8

    :cond_8
    const-class v5, [Ljava/lang/Byte;

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_8
    if-eqz v5, :cond_9

    move v5, v6

    goto :goto_9

    :cond_9
    const-class v5, [Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_9
    if-eqz v5, :cond_a

    move v5, v6

    goto :goto_a

    :cond_a
    const-class v5, [Ljava/lang/Long;

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_a
    if-eqz v5, :cond_b

    move v5, v6

    goto :goto_b

    :cond_b
    const-class v5, [Ljava/lang/Float;

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_b
    if-eqz v5, :cond_c

    move v5, v6

    goto :goto_c

    :cond_c
    const-class v5, [Ljava/lang/Double;

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_c
    if-eqz v5, :cond_d

    goto :goto_d

    :cond_d
    const-class v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_d
    if-eqz v6, :cond_e

    goto/16 :goto_14

    :cond_e
    const-class v5, [Z

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_10

    check-cast v0, [Z

    sget-object v3, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/Boolean;

    :goto_e
    if-ge v6, v3, :cond_f

    aget-boolean v5, v0, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_f
    move-object v0, v4

    goto/16 :goto_14

    :cond_10
    const-class v5, [B

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    check-cast v0, [B

    sget-object v3, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/Byte;

    :goto_f
    if-ge v6, v3, :cond_f

    aget-byte v5, v0, v6

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_11
    const-class v5, [I

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    check-cast v0, [I

    sget-object v3, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/Integer;

    :goto_10
    if-ge v6, v3, :cond_f

    aget v5, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_12
    const-class v5, [J

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    check-cast v0, [J

    sget-object v3, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/Long;

    :goto_11
    if-ge v6, v3, :cond_f

    aget-wide v7, v0, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_13
    const-class v5, [F

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    check-cast v0, [F

    sget-object v3, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/Float;

    :goto_12
    if-ge v6, v3, :cond_f

    aget v5, v0, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_14
    const-class v5, [D

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    check-cast v0, [D

    sget-object v3, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/Double;

    :goto_13
    if-ge v6, v3, :cond_f

    aget-wide v7, v0, v6

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :goto_14
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Key "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has invalid type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    return-void
.end method
