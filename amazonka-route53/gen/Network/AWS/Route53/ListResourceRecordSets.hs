{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.ListResourceRecordSets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the resource record sets in a specified hosted zone.
--
--
-- @ListResourceRecordSets@ returns up to 100 resource record sets at a time in ASCII order, beginning at a position specified by the @name@ and @type@ elements.
--
-- __Sort order__
--
-- @ListResourceRecordSets@ sorts results first by DNS name with the labels reversed, for example:
--
-- @com.example.www.@
--
-- Note the trailing dot, which can change the sort order when the record name contains characters that appear before @.@ (decimal 46) in the ASCII table. These characters include the following: @! " # $ % & ' ( ) * + , -@
--
-- When multiple records have the same DNS name, @ListResourceRecordSets@ sorts results by the record type.
--
-- __Specifying where to start listing records__
--
-- You can use the name and type elements to specify the resource record set that the list begins with:
--
--     * If you do not specify Name or Type    * The results begin with the first resource record set that the hosted zone contains.
--
--     * If you specify Name but not Type    * The results begin with the first resource record set in the list whose name is greater than or equal to @Name@ .
--
--     * If you specify Type but not Name    * Amazon Route 53 returns the @InvalidInput@ error.
--
--     * If you specify both Name and Type    * The results begin with the first resource record set in the list whose name is greater than or equal to @Name@ , and whose type is greater than or equal to @Type@ .
--
--
--
-- __Resource record sets that are PENDING__
--
-- This action returns the most current version of the records. This includes records that are @PENDING@ , and that are not yet available on all Route 53 DNS servers.
--
-- __Changing resource record sets__
--
-- To ensure that you get an accurate listing of the resource record sets for a hosted zone at a point in time, do not submit a @ChangeResourceRecordSets@ request while you're paging through the results of a @ListResourceRecordSets@ request. If you do, some pages may display results without the latest changes while other pages display results with the latest changes.
--
-- __Displaying the next page of results__
--
-- If a @ListResourceRecordSets@ command returns more than one page of results, the value of @IsTruncated@ is @true@ . To display the next page of results, get the values of @NextRecordName@ , @NextRecordType@ , and @NextRecordIdentifier@ (if any) from the response. Then submit another @ListResourceRecordSets@ request, and specify those values for @StartRecordName@ , @StartRecordType@ , and @StartRecordIdentifier@ .
--
--
-- This operation returns paginated results.
module Network.AWS.Route53.ListResourceRecordSets
  ( -- * Creating a Request
    listResourceRecordSets,
    ListResourceRecordSets,

    -- * Request Lenses
    lrrsStartRecordIdentifier,
    lrrsStartRecordType,
    lrrsMaxItems,
    lrrsStartRecordName,
    lrrsHostedZoneId,

    -- * Destructuring the Response
    listResourceRecordSetsResponse,
    ListResourceRecordSetsResponse,

    -- * Response Lenses
    lrrsrrsNextRecordType,
    lrrsrrsNextRecordIdentifier,
    lrrsrrsNextRecordName,
    lrrsrrsResponseStatus,
    lrrsrrsResourceRecordSets,
    lrrsrrsIsTruncated,
    lrrsrrsMaxItems,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A request for the resource record sets that are associated with a specified hosted zone.
--
--
--
-- /See:/ 'listResourceRecordSets' smart constructor.
data ListResourceRecordSets = ListResourceRecordSets'
  { _lrrsStartRecordIdentifier ::
      !(Maybe Text),
    _lrrsStartRecordType ::
      !(Maybe RecordType),
    _lrrsMaxItems ::
      !(Maybe Text),
    _lrrsStartRecordName ::
      !(Maybe Text),
    _lrrsHostedZoneId ::
      !ResourceId
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListResourceRecordSets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrsStartRecordIdentifier' - /Resource record sets that have a routing policy other than simple:/ If results were truncated for a given DNS name and type, specify the value of @NextRecordIdentifier@ from the previous response to get the next resource record set that has the current DNS name and type.
--
-- * 'lrrsStartRecordType' - The type of resource record set to begin the record listing from. Valid values for basic resource record sets: @A@ | @AAAA@ | @CAA@ | @CNAME@ | @MX@ | @NAPTR@ | @NS@ | @PTR@ | @SOA@ | @SPF@ | @SRV@ | @TXT@  Values for weighted, latency, geolocation, and failover resource record sets: @A@ | @AAAA@ | @CAA@ | @CNAME@ | @MX@ | @NAPTR@ | @PTR@ | @SPF@ | @SRV@ | @TXT@  Values for alias resource record sets:      * __API Gateway custom regional API or edge-optimized API__ : A     * __CloudFront distribution__ : A or AAAA     * __Elastic Beanstalk environment that has a regionalized subdomain__ : A     * __Elastic Load Balancing load balancer__ : A | AAAA     * __S3 bucket__ : A     * __VPC interface VPC endpoint__ : A     * __Another resource record set in this hosted zone:__ The type of the resource record set that the alias references. Constraint: Specifying @type@ without specifying @name@ returns an @InvalidInput@ error.
--
-- * 'lrrsMaxItems' - (Optional) The maximum number of resource records sets to include in the response body for this request. If the response includes more than @maxitems@ resource record sets, the value of the @IsTruncated@ element in the response is @true@ , and the values of the @NextRecordName@ and @NextRecordType@ elements in the response identify the first resource record set in the next group of @maxitems@ resource record sets.
--
-- * 'lrrsStartRecordName' - The first name in the lexicographic ordering of resource record sets that you want to list. If the specified record name doesn't exist, the results begin with the first resource record set that has a name greater than the value of @name@ .
--
-- * 'lrrsHostedZoneId' - The ID of the hosted zone that contains the resource record sets that you want to list.
listResourceRecordSets ::
  -- | 'lrrsHostedZoneId'
  ResourceId ->
  ListResourceRecordSets
listResourceRecordSets pHostedZoneId_ =
  ListResourceRecordSets'
    { _lrrsStartRecordIdentifier =
        Nothing,
      _lrrsStartRecordType = Nothing,
      _lrrsMaxItems = Nothing,
      _lrrsStartRecordName = Nothing,
      _lrrsHostedZoneId = pHostedZoneId_
    }

-- | /Resource record sets that have a routing policy other than simple:/ If results were truncated for a given DNS name and type, specify the value of @NextRecordIdentifier@ from the previous response to get the next resource record set that has the current DNS name and type.
lrrsStartRecordIdentifier :: Lens' ListResourceRecordSets (Maybe Text)
lrrsStartRecordIdentifier = lens _lrrsStartRecordIdentifier (\s a -> s {_lrrsStartRecordIdentifier = a})

-- | The type of resource record set to begin the record listing from. Valid values for basic resource record sets: @A@ | @AAAA@ | @CAA@ | @CNAME@ | @MX@ | @NAPTR@ | @NS@ | @PTR@ | @SOA@ | @SPF@ | @SRV@ | @TXT@  Values for weighted, latency, geolocation, and failover resource record sets: @A@ | @AAAA@ | @CAA@ | @CNAME@ | @MX@ | @NAPTR@ | @PTR@ | @SPF@ | @SRV@ | @TXT@  Values for alias resource record sets:      * __API Gateway custom regional API or edge-optimized API__ : A     * __CloudFront distribution__ : A or AAAA     * __Elastic Beanstalk environment that has a regionalized subdomain__ : A     * __Elastic Load Balancing load balancer__ : A | AAAA     * __S3 bucket__ : A     * __VPC interface VPC endpoint__ : A     * __Another resource record set in this hosted zone:__ The type of the resource record set that the alias references. Constraint: Specifying @type@ without specifying @name@ returns an @InvalidInput@ error.
lrrsStartRecordType :: Lens' ListResourceRecordSets (Maybe RecordType)
lrrsStartRecordType = lens _lrrsStartRecordType (\s a -> s {_lrrsStartRecordType = a})

-- | (Optional) The maximum number of resource records sets to include in the response body for this request. If the response includes more than @maxitems@ resource record sets, the value of the @IsTruncated@ element in the response is @true@ , and the values of the @NextRecordName@ and @NextRecordType@ elements in the response identify the first resource record set in the next group of @maxitems@ resource record sets.
lrrsMaxItems :: Lens' ListResourceRecordSets (Maybe Text)
lrrsMaxItems = lens _lrrsMaxItems (\s a -> s {_lrrsMaxItems = a})

-- | The first name in the lexicographic ordering of resource record sets that you want to list. If the specified record name doesn't exist, the results begin with the first resource record set that has a name greater than the value of @name@ .
lrrsStartRecordName :: Lens' ListResourceRecordSets (Maybe Text)
lrrsStartRecordName = lens _lrrsStartRecordName (\s a -> s {_lrrsStartRecordName = a})

-- | The ID of the hosted zone that contains the resource record sets that you want to list.
lrrsHostedZoneId :: Lens' ListResourceRecordSets ResourceId
lrrsHostedZoneId = lens _lrrsHostedZoneId (\s a -> s {_lrrsHostedZoneId = a})

instance AWSPager ListResourceRecordSets where
  page rq rs
    | stop (rs ^. lrrsrrsIsTruncated) = Nothing
    | isNothing (rs ^. lrrsrrsNextRecordName)
        && isNothing (rs ^. lrrsrrsNextRecordType)
        && isNothing (rs ^. lrrsrrsNextRecordIdentifier) =
      Nothing
    | otherwise =
      Just $
        rq
          & lrrsStartRecordName
          .~ rs ^. lrrsrrsNextRecordName
          & lrrsStartRecordType
          .~ rs ^. lrrsrrsNextRecordType
          & lrrsStartRecordIdentifier
          .~ rs ^. lrrsrrsNextRecordIdentifier

instance AWSRequest ListResourceRecordSets where
  type
    Rs ListResourceRecordSets =
      ListResourceRecordSetsResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          ListResourceRecordSetsResponse'
            <$> (x .@? "NextRecordType")
            <*> (x .@? "NextRecordIdentifier")
            <*> (x .@? "NextRecordName")
            <*> (pure (fromEnum s))
            <*> ( x .@? "ResourceRecordSets" .!@ mempty
                    >>= parseXMLList "ResourceRecordSet"
                )
            <*> (x .@ "IsTruncated")
            <*> (x .@ "MaxItems")
      )

instance Hashable ListResourceRecordSets

instance NFData ListResourceRecordSets

instance ToHeaders ListResourceRecordSets where
  toHeaders = const mempty

instance ToPath ListResourceRecordSets where
  toPath ListResourceRecordSets' {..} =
    mconcat
      [ "/2013-04-01/hostedzone/",
        toBS _lrrsHostedZoneId,
        "/rrset"
      ]

instance ToQuery ListResourceRecordSets where
  toQuery ListResourceRecordSets' {..} =
    mconcat
      [ "identifier" =: _lrrsStartRecordIdentifier,
        "type" =: _lrrsStartRecordType,
        "maxitems" =: _lrrsMaxItems,
        "name" =: _lrrsStartRecordName
      ]

-- | A complex type that contains list information for the resource record set.
--
--
--
-- /See:/ 'listResourceRecordSetsResponse' smart constructor.
data ListResourceRecordSetsResponse = ListResourceRecordSetsResponse'
  { _lrrsrrsNextRecordType ::
      !( Maybe
           RecordType
       ),
    _lrrsrrsNextRecordIdentifier ::
      !( Maybe
           Text
       ),
    _lrrsrrsNextRecordName ::
      !( Maybe
           Text
       ),
    _lrrsrrsResponseStatus ::
      !Int,
    _lrrsrrsResourceRecordSets ::
      ![ResourceRecordSet],
    _lrrsrrsIsTruncated ::
      !Bool,
    _lrrsrrsMaxItems ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListResourceRecordSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrsrrsNextRecordType' - If the results were truncated, the type of the next record in the list. This element is present only if @IsTruncated@ is true.
--
-- * 'lrrsrrsNextRecordIdentifier' - /Resource record sets that have a routing policy other than simple:/ If results were truncated for a given DNS name and type, the value of @SetIdentifier@ for the next resource record set that has the current DNS name and type. For information about routing policies, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html Choosing a Routing Policy> in the /Amazon Route 53 Developer Guide/ .
--
-- * 'lrrsrrsNextRecordName' - If the results were truncated, the name of the next record in the list. This element is present only if @IsTruncated@ is true.
--
-- * 'lrrsrrsResponseStatus' - -- | The response status code.
--
-- * 'lrrsrrsResourceRecordSets' - Information about multiple resource record sets.
--
-- * 'lrrsrrsIsTruncated' - A flag that indicates whether more resource record sets remain to be listed. If your results were truncated, you can make a follow-up pagination request by using the @NextRecordName@ element.
--
-- * 'lrrsrrsMaxItems' - The maximum number of records you requested.
listResourceRecordSetsResponse ::
  -- | 'lrrsrrsResponseStatus'
  Int ->
  -- | 'lrrsrrsIsTruncated'
  Bool ->
  -- | 'lrrsrrsMaxItems'
  Text ->
  ListResourceRecordSetsResponse
listResourceRecordSetsResponse
  pResponseStatus_
  pIsTruncated_
  pMaxItems_ =
    ListResourceRecordSetsResponse'
      { _lrrsrrsNextRecordType =
          Nothing,
        _lrrsrrsNextRecordIdentifier = Nothing,
        _lrrsrrsNextRecordName = Nothing,
        _lrrsrrsResponseStatus = pResponseStatus_,
        _lrrsrrsResourceRecordSets = mempty,
        _lrrsrrsIsTruncated = pIsTruncated_,
        _lrrsrrsMaxItems = pMaxItems_
      }

-- | If the results were truncated, the type of the next record in the list. This element is present only if @IsTruncated@ is true.
lrrsrrsNextRecordType :: Lens' ListResourceRecordSetsResponse (Maybe RecordType)
lrrsrrsNextRecordType = lens _lrrsrrsNextRecordType (\s a -> s {_lrrsrrsNextRecordType = a})

-- | /Resource record sets that have a routing policy other than simple:/ If results were truncated for a given DNS name and type, the value of @SetIdentifier@ for the next resource record set that has the current DNS name and type. For information about routing policies, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html Choosing a Routing Policy> in the /Amazon Route 53 Developer Guide/ .
lrrsrrsNextRecordIdentifier :: Lens' ListResourceRecordSetsResponse (Maybe Text)
lrrsrrsNextRecordIdentifier = lens _lrrsrrsNextRecordIdentifier (\s a -> s {_lrrsrrsNextRecordIdentifier = a})

-- | If the results were truncated, the name of the next record in the list. This element is present only if @IsTruncated@ is true.
lrrsrrsNextRecordName :: Lens' ListResourceRecordSetsResponse (Maybe Text)
lrrsrrsNextRecordName = lens _lrrsrrsNextRecordName (\s a -> s {_lrrsrrsNextRecordName = a})

-- | -- | The response status code.
lrrsrrsResponseStatus :: Lens' ListResourceRecordSetsResponse Int
lrrsrrsResponseStatus = lens _lrrsrrsResponseStatus (\s a -> s {_lrrsrrsResponseStatus = a})

-- | Information about multiple resource record sets.
lrrsrrsResourceRecordSets :: Lens' ListResourceRecordSetsResponse [ResourceRecordSet]
lrrsrrsResourceRecordSets = lens _lrrsrrsResourceRecordSets (\s a -> s {_lrrsrrsResourceRecordSets = a}) . _Coerce

-- | A flag that indicates whether more resource record sets remain to be listed. If your results were truncated, you can make a follow-up pagination request by using the @NextRecordName@ element.
lrrsrrsIsTruncated :: Lens' ListResourceRecordSetsResponse Bool
lrrsrrsIsTruncated = lens _lrrsrrsIsTruncated (\s a -> s {_lrrsrrsIsTruncated = a})

-- | The maximum number of records you requested.
lrrsrrsMaxItems :: Lens' ListResourceRecordSetsResponse Text
lrrsrrsMaxItems = lens _lrrsrrsMaxItems (\s a -> s {_lrrsrrsMaxItems = a})

instance NFData ListResourceRecordSetsResponse
